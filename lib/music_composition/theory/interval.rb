# encoding: utf-8
# frozen_string_literal: true

##
# Contains the basic defines of the quality of an interval
# using an enum containing the value corrlating to the
# major/minor based intervals and perfect based intervals
# and the symbol for each the symbol.
module MusicComposition
  ##
  # Contains the basic defines of the quality of an interval
  # using an enum containing the value corrlating to the
  # major/minor based intervals and perfect based intervals
  # and the symbol for each the symbol.
  class Interval
    ##
    # Contains the basic defines of the quality of an interval
    # using an enum containing the value corrlating to the
    # major/minor based intervals and perfect based intervals
    # and the symbol for each the symbol.
    class Quality
      include Ruby::Enum
      define :D_DIMINISHED, [-2,  -3, 'dd']
      define :DIMINISHED,   [-1,  -2,  'd']
      define :MINOR,        [nil, -1,  'm']
      define :MAJOR,        [nil, 0,  'M']
      define :PERFECT,      [0, nil,  'P']
      define :AUGMENTED,    [1,    1, 'A']
      define :D_AUGMENTED,  [2,    2, 'AA']

      ##
      # Index of the value in refrence to
      # a perfect interval refrence value
      BASE_PERFECT_VAL_INDEX = 0
      ##
      # Index of the value in refrence to
      # a perfect interval refrence value
      BASE_MAJOR_VAL_INDEX = 1
      # Index to refrence the name of the interval
      NAME_INDEX = 2
    end
  end
end

##
# The representation of the distance from one note to another based on the
# letter name and value of both notes.
module MusicComposition
  ##
  # The representation of the distance from one note to another based on the
  # letter name and value of both notes.
  class Interval
    ##
    # _note1_ : the first note to base the interval off of
    # _note2_ : the second note to base the interval off of
    # _direction_ : the direction of the interval
    # _quality_ : The quality of the interval.
    # _letter_distance_ : the distance between the letters of two given notes
    attr_reader :note1, :note2, :direction, :quality, :letter_distance
    # _val_distance_ : the raw distance between the value of the two given notes
    attr_reader :val_distance

    # Interval direction down
    UP = 1
    # Interval direction down
    DOWN = -1

    ##
    # Creates an interval based on two notes and a direction.
    def initialize(n1: nil, n2: nil, direction: UP)
      @note1 = n1
      raise ArgumentError unless @note1
      @note2 = n2
      raise ArgumentError unless @note2
      @direction = direction

      set_distance
      set_quality
    end

    def set_distance
      ref, comp = ref_comp_notes

      @letter_distance = ((comp.letter[0] - ref.letter[0]) + 7) % 7
      @val_distance = comp.val - ref.val
      unison_correcter if @letter_distance.zero?
      @val_distance = (@val_distance + 12) % 12
    end

    def ref_comp_notes
      case @direction
      when UP
        return [@note1, @note2]
      when DOWN
        return [@note2, @note1]
      else
        raise ArgumentError
      end
    end

    def letter_distance_to_val
      case @letter_distance
      when 0..2
        return @letter_distance * 2
      when 3..6
        return (@letter_distance * 2) - 1
      else
        raise ArgumentError
      end
    end

    def set_quality
      quality_val = @val_distance - letter_distance_to_val
      quality_val -= 12 if quality_val > 5
      quality_val += 12 if quality_val < -5

      index = index_lookup
      Quality.each do |_key, enum|
        @quality = enum.value if quality_val == enum.value[index]
      end
    end

    def index_lookup
      case @letter_distance
      when 0, 3, 4
        return Quality::BASE_PERFECT_VAL_INDEX
      when 1, 2, 5, 6
        return Quality::BASE_MAJOR_VAL_INDEX
      else
        raise ArgumentError
      end
    end

    def unison_correcter
      if @val_distance > 5
        @val_distance -= 12
      elsif @val_distance < -5
        @val_distance += 12
      end
      @val_distance = @val_distance.abs
    end

    private :set_quality, :letter_distance_to_val, :set_distance, :index_lookup
    private :index_lookup, :ref_comp_notes, :unison_correcter
  end
end
