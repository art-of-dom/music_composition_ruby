# encoding: utf-8
# frozen_string_literal: true

require 'spec_helper'
require 'music_composition/defines/note_defines'
include MusicComposition

NATURAL_NOTE_ARRAY = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup,\
                      NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup,\
                      NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup,\
                      NOTE_B_NATURAL.dup].freeze

NATURAL_NOTE_OCT_3_ARRAY = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup,\
                            NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup,\
                            NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup,\
                            NOTE_B_NATURAL.dup].freeze
NATURAL_NOTE_OCT_3_ARRAY.each { |n| n.octave = 3 }

NATURAL_NOTE_OCT_4_ARRAY = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup,\
                            NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup,\
                            NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup,\
                            NOTE_B_NATURAL.dup].freeze

NATURAL_NOTE_OCT_4_ARRAY.each { |n| n.octave = 4 }
