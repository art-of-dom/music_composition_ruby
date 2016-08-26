# encoding: utf-8
# frozen_string_literal: true
require 'ruby-enum'

module MusicComposition
  ##
  # The basic representation of a measure containing
  # an array of notes and durations.
  class Measure
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
      @notes = if notes
                 Array.new(notes)
               else
                 []
               end
      @durs = if durs
                Array.new(durs)
              else
                []
              end
      @type = type
      @length = length
      measure_check
    end

    def measure_check
      case @type
      when Type::FIXED
        fixed_measure_check
      when Type::VARIABLE
        # variable_measure_check
      when Type::UNDEFINED
        # undefined_measure_check
      end
    end

    def fixed_measure_check
      sum = @durs.map(&:val).reduce(0, :+)
      if sum - @length < 0
        fill_measure sum
      elsif sum - @length > 0
        @excess_notes = []
        @excess_durs = []
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
        @excess_notes.unshift(@notes[-1])
        @excess_durs.unshift(Duration.new(raw: sum - @length))
        @durs[-1] = Duration.new(raw: @durs[-1].val - @excess_durs[-1].val)
      else
        @excess_notes.unshift(@notes.pop)
        @excess_durs.unshift(@durs.pop)
      end
    end
  end
end