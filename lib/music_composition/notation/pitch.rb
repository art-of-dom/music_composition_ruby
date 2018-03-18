# frozen_string_literal: true

require 'ruby-enum'

module MusicComposition
  ##
  # Functions and variables to determine pitch.
  module Pitch
    ##
    # The representation of the "middle" octave where middle C
    # is located.
    MIDDLE_OCTAVE = 4

    ##
    # International Organization of Standards defined reference
    # for A4.
    ISO_REFERENCE_PITCH = 440.0

    ##
    # Typical reference pitch for A4 when Baroque music is performed.
    BAROQUE_REFERENCE_PITCH = 415.0

    ##
    # * _octave_ : the octave range of a pitch defined from C to B
    attr_accessor :octave

    ##
    # * _frequency_ : the exact Hz (cycles per second) value of the pitch
    attr_reader :frequency

    ##
    # * _ref_pitch_ : the reference pitch used to calculate pitch
    attr_reader :ref_pitch

    ##
    # Calculates the frequency of a given note. The exact frequency
    # is dependant on the octave the not is in, the reference pitch
    # used, and tuning/temperament. As of now only ET (Equal Temperament)
    # is accounted for.
    #
    # ==== Attributes
    #
    # *_ref_pitch_ the frequency of the reference pitch
    # *_ref_val_ the value of the reference pitch
    #
    # ==== Examples
    #
    #    note = Note.new(letter: 'A', quality: 'NATURAL')
    #
    #    note.octave=4
    #    note.calc_frequency
    #    note.frequency    # => 440.0
    #    note.calc_frequency(ref_pitch: BAROQUE_REFERENCE_PITCH)
    #    note.frequency    # => 415.0
    #
    #    note.octave=3
    #    note.calc_frequency
    #    note.frequency    # => 220.0
    #    note.calc_frequency(ref_pitch: BAROQUE_REFERENCE_PITCH)
    #    note.frequency    # => 207.5
    #
    #    note.octave=5
    #    note.calc_frequency
    #    note.frequency    # => 880.0
    #    note.calc_frequency(ref_pitch: BAROQUE_REFERENCE_PITCH)
    #    note.frequency    # => 830.0
    def calc_frequency(ref_pitch: ISO_REFERENCE_PITCH,\
                       ref_val: Note::Letter::A[Note::Letter::BASE_VAL_INDEX],\
                       ref_octave: MIDDLE_OCTAVE)
      tmp_octave = (@octave * Note::SEMITONES_PER_OCTAVE)
      tmp_octave +=  @letter[Note::Letter::BASE_VAL_INDEX]
      tmp_octave +=  @quality[Note::Quality::VAL_INDEX]
      tmp_octave /= Note::SEMITONES_PER_OCTAVE
      tmp_octave -= ref_octave
      @ref_pitch = ref_pitch
      @frequency = ref_pitch * ((2**tmp_octave)) * \
                   (2**((@val - ref_val) / Note::SEMITONES_PER_OCTAVE.to_f))
    end
  end
end
