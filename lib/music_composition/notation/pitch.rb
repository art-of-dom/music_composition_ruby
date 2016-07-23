# encoding: utf-8
# frozen_string_literal: true
require 'ruby-enum'

module MusicComposition
  ##
  # Pitch
  #
  # Functions and vairables to determine pitch.
  module Pitch
    ##
    # International Oranization of Stanards defined refrence
    # for A4.
    ISO_REFERENCE_PITCH = 440.0

    ##
    # attributes
    # _ref_pitch_ : the refrence pitch used to caulculate pitch
    # _octave_ : the octave range of a pitch defined from C to B
    attr_accessor :ref_pitch, :octave

    ##
    # attributes
    # _frequency_ : the exact Hz (cycles per second) value of the pitch
    attr_reader :frequency

    ##
    # Calculates the frequency of a given note. The exact frequency
    # is dependant on the octave the not is in, the refrence pitch
    # used, and tuning/temperment. As of now only ET (Equal Temperment)
    # is accounted for.
    def calc_frequency(ref: ISO_REFERENCE_PITCH)
      tmp_octave = (@octave * 12)
      tmp_octave +=  @letter[Note::Letter::BASE_VAL_INDEX]
      tmp_octave +=  @quality[Note::Quality::VAL_INDEX]
      tmp_octave /= 12
      @ref_pitch = ref
      @frequency = ref * ((2**(tmp_octave - 4))) * (2**((@val - 9) / 12.0))
    end
  end
end
