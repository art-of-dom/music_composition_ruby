# encoding: utf-8
# frozen_string_literal: true
require 'ruby-enum'

module MusicComposition
  ##
  # Pitch
  #
  # Functions and vairables
  module Pitch
    ISO_REFERENCE_PITCH = 440.0
    attr_accessor :ref_pitch, :octave
    attr_reader :frequency

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
