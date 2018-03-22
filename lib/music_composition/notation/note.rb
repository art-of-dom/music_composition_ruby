# frozen_string_literal: true

require 'ruby-enum'

module MusicComposition
  ##
  # The basic representation of a note containing the
  # letter of the note, the quality added to the letter,
  # and the resulting value of the note.
  class Note
    include Pitch

    # Number of semitones in an octave.
    SEMITONES_PER_OCTAVE = 12

    ##
    # Contains the basic defines of the letter of a note
    # using an enum containing the value modifier and
    # the symbol.
    class Letter
      include Ruby::Enum
      define :A, [0, 9, 'A']
      define :B, [1, 11, 'B']
      define :C, [2,  0, 'C']
      define :D, [3,  2, 'D']
      define :E, [4,  4, 'E']
      define :F, [5,  5, 'F']
      define :G, [6,  7, 'G']

      # Number of letters in the class
      NUMBER_OF_LETTERS = 7
      # The index of the id of the letter
      ID_INDEX = 0
      # The index of the base value of the given letter
      BASE_VAL_INDEX = 1
      # The index of the string or name of a given letter
      NAME_INDEX = 2

      ##
      # Finda a given letter using the id of the letter.
      #
      # ==== Attributes
      #
      # * +letter+ - The id of the letter to be looked up.
      #
      # ==== Examples
      #
      #    Note::Letter.find_by_id(0)   # => :A
      #
      def self.find_by_id(letter)
        each do |_key, enum|
          return enum.value if letter == enum.value[ID_INDEX]
        end
      end

      ##
      # Finda a given letter using the value of the letter.
      #
      # ==== Attributes
      #
      # * +letter+ - The value of the letter to be looked up.
      #
      # ==== Examples
      #
      #    Note::Letter.find_by_val(0)   # => :C
      #
      def self.find_by_val(letter)
        each do |_key, enum|
          return enum.value if letter == enum.value[BASE_VAL_INDEX]
        end
      end
    end

    ##
    # Contains the basic defines of the quality of a note
    # using an enum containing the value modifier and
    # the symbol.
    class Quality
      include Ruby::Enum
      define :D_FLAT,  [-2, '𝄫']
      define :FLAT,    [-1, '♭']
      define :NATURAL, [0,  '♮']
      define :SHARP,   [1,  '♯']
      define :D_SHARP, [2,  '𝄪']
      # The index of the value of the quality
      VAL_INDEX  = 0
      # The index of the string or name of a given quality
      NAME_INDEX = 1

      ##
      # Finda a given quality using the value of the quality.
      #
      # ==== Attributes
      #
      # * +value+ - The value of the quality to be looked up.
      #
      # ==== Examples
      #
      #    Note::Quality.find_by_val(0)   # => :NATURAL
      #
      def self.find_by_val(quality)
        each do |_key, enum|
          return enum.value if quality == enum.value[VAL_INDEX]
        end
      end

      ##
      # Finds the maximum quality value to determine maximum alteration. Used
      # for checking enharmonic bounds
      # * flattens all values arrays
      # * selects only the integers from the flattened array
      # * gets max from built-in max method
      def self.max_val
        values.flatten.select { |x| x.is_a?(Integer) }.max
      end

      ##
      # Finds the minimum quality value to determine minimum alteration. Used
      # for checking enharmonic bounds
      # * flattens all values arrays
      # * selects only the integers from the flattened array
      # * gets min from built-in min method
      def self.min_val
        values.flatten.select { |x| x.is_a?(Integer) }.min
      end
    end

    ##
    # The letter of the note represented by the Note::Letter enum
    attr_reader :letter
    # The quality of the note represented by the Note::Quality enum
    attr_reader :quality
    # The raw value of the note based on the
    # base value of the letter and the modifier val
    # of the quality.
    attr_reader :val

    ##
    # Initializes the note base on either the letter and
    # quality, letter and val, and quality and val.
    # Only setting one value will result in an argument error.
    # If all three are set, the value will be recalculated to prevent any
    # manual entry errors.
    #
    # ==== Attributes
    #
    # * +letter+ - The letter of the note to be created as a string of
    # the Note::Letter enum defines. Initialized to nil.
    # * +quality+ - The quality of the note to be created as a string of the
    # Note::Quality enum defines. Initialized to nil.
    # * +val+ - The raw distance of the note up from C as an Integer.
    # Initialized to nil.
    #
    # ==== Examples
    #
    #    # Creates an A♯ note.
    #    Note.new(letter: 'A', quality: 'SHARP')
    #
    #    # Also creates an A♯ note.
    #    Note.new(letter: 'A', val: 10)
    #
    #    # Yet another way to create an A♯.
    #    Note.new(quality: 'SHARP', val:10)
    #
    #    # You can use all 3 attributes to A♯, however the val will be
    #    # recalculated to prevent inconsistencies. These both
    #    # produce an A♯ note even though the second contains the wrong val.
    #    Note.new(letter: 'A', quality: 'SHARP', val:10)
    #    Note.new(letter: 'A', quality: 'SHARP', val:9)
    #
    def initialize(letter: nil, quality: nil, val: nil)
      @letter = Letter.parse(letter)
      @quality = Quality.parse(quality)
      @val = val % SEMITONES_PER_OCTAVE if val

      set_vars
    end

    ##
    # Returns the id of the letter of the note.
    #
    # ==== Examples
    #
    #    note = Note.new(letter: 'A', quality: 'NATURAL')
    #    note.letter_id # => 0
    #
    def letter_id
      @letter[Letter::ID_INDEX]
    end

    ##
    # Returns the name of the letter of the note.
    #
    # ==== Examples
    #
    #    note = Note.new(letter: 'A', quality: 'NATURAL')
    #    note.letter_name # => 'A'
    #
    def letter_name
      @letter[Letter::NAME_INDEX]
    end

    ##
    # Returns the raw value given to the letter of the note.
    #
    # ==== Examples
    #
    #    note = Note.new(letter: 'A', quality: 'NATURAL')
    #    note.letter_val # => 9
    #
    def letter_val
      @letter[Letter::BASE_VAL_INDEX]
    end

    ##
    # Returns a representation of the note as a string.
    #
    # ==== Examples
    #
    #    note1 = Note.new(letter: 'A', quality: 'NATURAL')
    #    note2 = Note.new(letter: 'B', quality: 'SHARP')
    #    note3 = Note.new(letter: 'C', quality: 'FLAT')
    #    note4 = Note.new(letter: 'D', quality: 'D_SHARP')
    #    note5 = Note.new(letter: 'E', quality: 'D_FLAT')
    #
    #    # #name will return the name of the note created.
    #    note1.name   # => 'A'
    #    note2.name   # => 'B♯'
    #    note3.name   # => 'C♭'
    #    note4.name   # => 'D𝄪'
    #    note5.name   # => 'E𝄫'
    #
    #    # If the octave is set, which is part of the Pitch module,
    #    # it will be displyed as part of the name.
    #    note1.octave = 5
    #    note1.name   # => 'A5'
    #
    #    note2.octave = 3
    #    note2.name   # => 'B♯3'
    #
    #    note3.octave = 4
    #    note3.name   # => 'C♭4'
    #
    #    note4.octave = 1
    #    note4.name   # => 'D𝄪1'
    #
    #    note5.octave = 2
    #    note5.name   # => 'E𝄫2'
    #
    def name
      note_name = String.new(letter_name)
      note_name.concat(quality_name) unless \
        quality_val.zero?
      note_name.concat(@octave.to_s) unless @octave.nil?
      note_name
    end

    ##
    # Checks if notes are equal by comparing all attributes.
    # ==== Attributes
    #
    # * _note_:  The note being compared. Must be a Note object.
    #
    # ==== Examples
    #
    #    note1 = Note.new(letter: 'A', quality: 'SHARP')
    #    note2 = Note.new(letter: 'A', val: 10)
    #    note3 = Note.new(letter: 'B', quality: 'FLAT')
    #    note4 = Note.new(letter: 'C', quality: 'D_FLAT')
    #
    #    # Notes are equal if they share the same letter, quality, and value.
    #    note1.note_equal?(note2) # => true
    #    note1.note_equal?(note3) # => false
    #    note1.note_equal?(note4) # => false
    #
    def equal?(note)
      ((note.val == @val) && (note.letter == @letter) && \
       (note.quality == @quality))
    end

    ##
    # Checks if notes are equivalent by the value of the notes.
    #
    # ==== Attributes
    #
    # * _note_:  The note being compared. Must be a Note object.
    #
    # ==== Examples
    #
    #    note1 = Note.new(letter: 'A', quality: 'SHARP')
    #    note2 = Note.new(letter: 'B', quality: 'FLAT')
    #    note3 = Note.new(letter: 'C', quality: 'D_FLAT')
    #    note4 = Note.new(letter: 'G', quality: 'D_SHARP')
    #
    #    # Notes are equivalent if they share the same value.
    #    note1.note_equivalent?(note2) # => true
    #    note1.note_equivalent?(note3) # => true
    #    note1.note_equivalent?(note4) # => false
    #
    def equivalent?(note)
      note.val == @val
    end

    ##
    # Returns the name of the quality of the note.
    #
    # ==== Examples
    #
    #    note = Note.new(letter: 'A', quality: 'NATURAL')
    #    note.quality_name # => '♮'
    #
    def quality_name
      @quality[Quality::NAME_INDEX]
    end

    ##
    # Returns the value of the quality of the note.
    #
    # ==== Examples
    #
    #    note = Note.new(letter: 'A', quality: 'NATURAL')
    #    note.quality_val # => 0
    #
    def quality_val
      @quality[Quality::VAL_INDEX]
    end

    ##
    # Turns a note into an enharmonic equivalent.
    #
    # ==== Attributes
    #
    # * _letter_shift_:  The letter distance delta as an Integer to
    # change the note by to create an enharmonic equivalent.
    #
    # ==== Examples
    #
    #    # Creates an A♯ note.
    #    note = Note.new(letter: 'A', quality: 'SHARP')
    #
    #    # Turns note into a B♭ note from an A♯ note.
    #    note.to_equivalent!(1)
    #
    #    # Turns note into a C𝄫 from a B♭ note.
    #    note._to_equivalent!(1)
    #
    #    # Turns note back into an A♯ note from a C𝄫 note.
    #    note.to_equivalent!(-2)
    #
    #    # This has no effect and is still an A♯ note.
    #    note.to_equivalent!(0)
    #
    def to_equivalent!(letter_shift)
      return if letter_shift.zero?
      letter = (letter_id + letter_shift) % \
               Letter::NUMBER_OF_LETTERS
      @letter = Letter.find_by_id letter
      set_quality
    end

    alias == equal?

    private def set_vars
      set_val if @val.nil?
      set_quality if @quality.nil?
      set_letter if @letter.nil?
    end

    private def set_val
      raise ArgumentError if @letter.nil? || @quality.nil?
      val = letter_val
      val += quality_val
      val += SEMITONES_PER_OCTAVE if val < 0
      @val = val % SEMITONES_PER_OCTAVE
    end

    private def set_quality
      raise ArgumentError if @letter.nil? || @val.nil?
      quality = @val - letter_val
      quality += SEMITONES_PER_OCTAVE if quality < Quality.min_val
      quality -= SEMITONES_PER_OCTAVE if quality > Quality.max_val
      @quality = Quality.find_by_val quality
    end

    private def set_letter
      raise ArgumentError if @quality.nil? || @val.nil?
      letter = (@val - quality_val) % SEMITONES_PER_OCTAVE
      letter += SEMITONES_PER_OCTAVE if val < 0
      @letter = Letter.find_by_val letter
    end
  end
end
