# encoding: utf-8
# frozen_string_literal: true

##
# Contains the basic defines of the quality of an interval
# using an enum containing the value correlating to the
# major/minor based intervals and perfect based intervals
# and the symbol for each the symbol.
module MusicComposition
  ##
  # Contains the basic defines of the quality of an interval
  # using an enum containing the value correlating to the
  # major/minor based intervals and perfect based intervals
  # and the symbol for each the symbol.
  class Interval
    ##
    # Contains the basic defines of the quality of an interval
    # using an enum containing the value correlating to the
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
      # Index of the value in reference to
      # a perfect interval reference value
      BASE_PERFECT_VAL_INDEX = 0
      ##
      # Index of the value in reference to
      # a perfect interval reference value
      BASE_MAJOR_VAL_INDEX = 1
      # Index to reference the name of the interval
      NAME_INDEX = 2

      ##
      # Finds an interval quality based value of the quality. Since
      # there are two different values bases on whether it is a major/minor
      # interval or perfect interval the index must be looked up first.
      #
      # ==== Attributes
      #
      # * +quality+ - The quality to be looked up.
      # * +index+ - The index to look into. Should only be one of the constans
      # above
      #
      # ==== Examples
      #
      #    Interval::Quality.find_by_id(0, BASE_PERFECT_VAL_INDEX) # => :PERFECT
      #    Interval::Quality.find_by_id(0, BASE_MAJOR_VAL_INDEX)   # => :MAJOR
      #
      def self.find_by_id(quality, index)
        each do |_key, enum|
          return enum.value if quality == enum.value[index]
        end
      end
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
    #
    # ==== Attributes
    #
    # * +n1+ - The first note of the interval. Initialized to nil.
    # * +n2+ - The second note of the interval. Initialized to nil.
    # * +direction+ - The direction of the interval. Initialized to UP.
    #
    # ==== Examples
    #
    #    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    #    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    #    n3 = Note.new(letter: 'G', quality: 'NATURAL')
    #    n4 = Note.new(letter: 'B', quality: 'NATURAL')
    #
    #    interval_ce = Interval.new(n1: n1, n2: n2)
    #    interval_ec = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)
    #
    #    interval_cg = Interval.new(n1: n1, n2: n3)
    #    interval_gc = Interval.new(n1: n1, n2: n3, direction: Interval::DOWN)
    #    interval_cb = Interval.new(n1: n1, n2: n4)
    #    interval_bc = Interval.new(n1: n1, n2: n4, direction: Interval::DOWN)
    #
    def initialize(n1: nil, n2: nil, direction: UP, compound: false)
      @note1 = n1
      @note2 = n2
      raise ArgumentError unless @note1 && @note2
      @direction = direction
      @_compound = compound
      calculate_interval
    end

    ##
    # Checks if intervals are equal.
    #
    # ==== Attributes
    #
    # * _interval_:  The interval being compared. Must be a Interval object.
    #
    # ==== Examples
    #
    #    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    #    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    #    n3 = Note.new(letter: 'G', quality: 'NATURAL')
    #    n4 = Note.new(letter: 'B', quality: 'NATURAL')
    #
    #    interval_ce = Interval.new(n1: n1, n2: n2)
    #    interval_ec = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)
    #    interval_ce.interval_equal?(interval_ec) # => false
    #
    #    interval_gb = Interval.new(n1: n3, n2: n4)
    #    interval_gb.interval_equal?(interval_ce) # => ture
    #    interval_gb.interval_equal?(interval_ec) # => false
    #
    def interval_equal?(interval)
      ((interval.val_distance == @val_distance) && \
       (interval.letter_distance == @letter_distance) && \
       (interval.quality == @quality))
    end

    ##
    # Checks if intervals are equivalent.
    #
    # ==== Attributes
    #
    # * _interval_:  The interval being compared. Must be a Interval object.
    #
    # ==== Examples
    #
    #    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    #    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    #    n3 = Note.new(letter: 'G', quality: 'NATURAL')
    #    n4 = Note.new(letter: 'B', quality: 'NATURAL')
    #    n5 = Note.new(letter: 'C', quality: 'FLAT')
    #
    #    interval_ce = Interval.new(n1: n1, n2: n2)
    #    interval_ec = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)
    #    interval_ce.interval_equivalent(interval_ec) # => false
    #
    #    interval_gb = Interval.new(n1: n3, n2: n4)
    #    interval_gcflat = Interval.new(n1: n3, n2: n5)
    #    interval_gb.interval_equivalent(interval_ce) # => ture
    #    interval_gb.interval_equivalent?(interval_ec) # => false
    #    interval_gb.interval_equivalent?(interval_gcflat) # => ture
    #
    def interval_equivalent?(interval)
      interval.val_distance == @val_distance
    end

    ##
    # Inverts an interval.
    #
    # ==== Examples
    #
    #    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    #    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    #
    #    interval = Interval.new(n1: n1, n2: n2)
    #    interval.name # => 'M3'
    #
    #    interval.invert
    #    interval.name # => 'm6'
    #
    def invert
      @note1, @note2 = @note2, @note1
      calculate_interval
    end

    ##
    # Gives the name of the interval.
    #
    # ==== Examples
    #
    #    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    #    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    #
    #    interval = Interval.new(n1: n1, n2: n2)
    #    interval.name # => 'M3'
    #
    def name
      interval_name = String.new(@quality[Quality::NAME_INDEX])
      interval_name.concat(letter_distance.next.to_s)
    end

    ##
    #  Runs all calculations needed to determine the interval.
    private def calculate_interval
      ref, comp = ref_comp_notes
      set_distance ref, comp
      set_quality

      @octave = comp.octave - ref.octave if !comp.octave.nil? && !ref.octave.nil?
      @letter_distance += 7 if !@octave.nil? && @octave > 0 && \
                               (@_compound || @letter_distance.zero?)
    end

    ##
    # Looks up which index to use for quality of the interval.
    private def index_lookup
      case @letter_distance # % 7
      when 0, 3, 4
        return Quality::BASE_PERFECT_VAL_INDEX
      when 1, 2, 5, 6
        return Quality::BASE_MAJOR_VAL_INDEX
      else
        raise ArgumentError
      end
    end

    #  Gets the "natural" value of the distance between two notes.
    #  For major/minor chords the "natural" value is the major interval
    #  and for perfect intervals the value is the perfect interval.
    private def letter_distance_to_val
      case @letter_distance # % 7
      when 0..2
        @letter_distance * 2
      when 3..6
        (@letter_distance * 2) - 1
      else
        raise ArgumentError
      end
    end

    # Sets notes for refernce and comparison based on direction.
    private def ref_comp_notes
      case @direction
      when UP
        [@note1, @note2]
      when DOWN
        [@note2, @note1]
      else
        raise ArgumentError
      end
    end

    # internally sets distance of the interval
    private def set_distance(ref, comp)
      oct_comp = 1
      oct_ref = 1
      oct_comp ||= comp.octave
      oct_ref  ||= ref.octave
      @letter_distance = (comp.letter_id - ref.letter_id) % 7
      @val_distance = ((comp.val * oct_comp) - (ref.val * oct_ref))
      unison_correcter if @letter_distance.zero?
      @val_distance = @val_distance % Note::SEMITONES_PER_OCTAVE
    end

    # internally sets quality of the interval
    private def set_quality
      quality = @val_distance - letter_distance_to_val
      quality -= Note::SEMITONES_PER_OCTAVE if quality > 5
      quality += Note::SEMITONES_PER_OCTAVE if quality < -5

      @quality = Quality.find_by_id quality, index_lookup
    end

    # Unison is an oddball. It can't be diminished, so it must be accounted for
    # here
    private def unison_correcter
      if @val_distance > 5
        @val_distance -= Note::SEMITONES_PER_OCTAVE
      elsif @val_distance < -5
        @val_distance += Note::SEMITONES_PER_OCTAVE
      end
      @val_distance = @val_distance.abs
    end
  end
end
