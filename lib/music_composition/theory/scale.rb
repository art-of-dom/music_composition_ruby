# encoding: utf-8
# frozen_string_literal: true

module MusicComposition
  ##
  # The basic representation of a scale able to dynamically
  # generate a scale given a starting note and the name of a
  # scale. Used to group sets of notes in details.
  class Scale
    # An augmented step with is the distance of 3 semitones
    A = 3
    # A whole step with is the distance of 2 semitones
    W = 2
    # A half step with is the distance of 1 semitone
    H = 1

    # attributes
    # _pattern_ : the pattern used to build the scale
    # _name_ : the name of the scale
    # _notes_ : the notes that make up the scale
    attr_reader :pattern, :name, :notes

    ##
    # The pattern and identifiers used to create scales.
    class Pattern
      include Ruby::Enum
      define :DIATONIC, [[W, W, H, W, W, W, H], 'Major', 'Dorian', 'Phrygian', 'Lydian', 'Mixolydin', 'Minor', 'Locrian']
      define :HARMONIC, [[W, H, W, W, H, A, H], 'Harmonic Minor', 'Locrian #6', 'Ionian #5', 'Dorian #4', 'Phrygian Dominant', 'Lydian #2', 'Super Locrian b7']
      define :MELODIC, [[W, H, W, W, W, W, H], 'Melodic Minor', 'Dorian b2', 'Lydian #5', 'Lydian Dominant', 'Mixolydin b6', 'Half Diminished', 'Super Locrian']
      # The index of the scale pattern formula
      FORMULA_INDEX = 0
    end

    ##
    # initialize:
    # Creates a scale given a root note and the name
    # of the scale.
    def initialize(root: nil, name: nil)
      raise ArgumentError unless root
      raise ArgumentError unless name
      @name = name
      tmp_pattern, ref_scale = find_pattern_base_pattern
      @pattern = correct_pattern(tmp_pattern, ref_scale)
      build_notes root
    end

    def find_pattern_base_pattern
      pattern = nil
      formula_index = Pattern::FORMULA_INDEX
      Pattern.each do |_key, enum|
        if enum.value[1..enum.value.length].any? { |s| s.casecmp(@name) == 0 }
          pattern = Array.new(enum.value[formula_index])
        end
        return pattern, enum.value if pattern
      end
      raise ArgumentError
    end

    def correct_pattern(tmp_pattern, ref_scale)
      (0..ref_scale.index(@name) - 2).each do |_x|
        tmp_pattern.push(tmp_pattern.shift)
      end
      tmp_pattern
    end

    def build_notes(root)
      @notes = Array.new(0)
      @notes.push(root)
      id_index = Note::Letter::ID_INDEX
      name_index = Note::Letter::NAME_INDEX
      @pattern.each do |pattern|
        letter_id = (@notes[-1].letter[id_index] + 1) % 7
        val = @notes[-1].val + pattern
        letter = Note::Letter.values[letter_id][name_index]
        @notes.push(Note.new(letter: letter, val: val))
      end
    end

    private :find_pattern_base_pattern, :correct_pattern, :build_notes
  end
end
