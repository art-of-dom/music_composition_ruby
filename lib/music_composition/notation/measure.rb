# frozen_string_literal: true

require 'ruby-enum'
require 'utils/array_helper'

module MusicComposition
  ##
  # The basic representation of a measure containing
  # an array of notes and durations.
  class Measure
    include Utils::ArrayHelper
    ##
    # The type of measure.
    class Type
      include Ruby::Enum
      # Measure fixed length
      define :FIXED, 0
      # Measure length determined by notes. Used when measure
      # length changes often.
      define :VARIABLE, 1
      # Measure length never defined. Used when meter is extreamly fluid.
      define :UNDEFINED, 2
    end

    ##
    # attributes
    # _notes_ : The notes in measure. Matches up to the durations.
    # _durs_ : The durations in measure. Matches up to the notes.
    # _type_ : The type of measure.
    # _length_ : The length of the measure.
    attr_reader :notes, :durs, :type, :length, :excess_notes, :excess_durs

    def initialize(notes: nil, durs: nil, type: Type::FIXED, \
                   length: (Duration::Value::QUARTER * 4))
      @notes = null_check_init(notes)
      @durs = null_check_init(durs)
      @type = type
      @length = length

      @excess_notes = []
      @excess_durs = []
      measure_check
    end

    def measure_check
      case @type
      when Type::FIXED
        fixed_measure_check
      when Type::VARIABLE
        # variable_measure_check
        true
      when Type::UNDEFINED
        # undefined_measure_check
        true
      end
    end

    def fixed_measure_check
      sum = @durs.map(&:val).reduce(0, :+)
      if sum - @length < 0
        fill_measure sum
      elsif sum - @length > 0
        while sum - @length > 0
          empty_measure sum
          sum = @durs.map(&:val).reduce(0, :+)
        end
      end
    end

    #    def variable_measure_check
    #      #TODO
    #    end

    #    def variable_measure_check
    #      #TODO
    #    end

    def fill_measure(sum)
      @notes.push(nil)
      @durs.push(Duration.new(raw: @length - sum))
    end

    def empty_measure(sum)
      # If the last duration is causing the overflow, shorten it
      if sum - @length - @durs[-1].val < 0
        cut_excess sum
      else
        @excess_notes.unshift(@notes.pop)
        @excess_durs.unshift(@durs.pop)
      end
    end

    def cut_excess(sum)
      @excess_notes.unshift(@notes[-1])
      @excess_durs.unshift(Duration.new(raw: sum - @length))
      @durs[-1] = Duration.new(raw: @durs[-1].val - @excess_durs[-1].val)
    end
  end
end
