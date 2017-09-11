# encoding: utf-8
# frozen_string_literal: true

require 'spec_helper'
require 'music_composition/defines/pitch_defines'
require 'music_composition/defines/note_defines'
include MusicComposition

C_PITCH_TEST = [[NOTE_B_SHARP.dup, (-1..9)], [NOTE_C_NATURAL.dup, (0..10)],\
                [NOTE_D_D_FLAT, (0..10)]].freeze
Db_PITCH_TEST = [[NOTE_B_D_SHARP.dup, (-1..9)], [NOTE_C_SHARP.dup, (0..10)],\
                 [NOTE_D_FLAT, (0..10)]].freeze
D_PITCH_TEST = [[NOTE_C_D_SHARP.dup, (0..10)], [NOTE_D_NATURAL.dup, (0..10)],\
                [NOTE_E_D_FLAT, (0..10)]].freeze
Eb_PITCH_TEST = [[NOTE_D_SHARP.dup, (0..10)], [NOTE_E_FLAT.dup, (0..10)],\
                 [NOTE_F_D_FLAT, (0..10)]].freeze
E_PITCH_TEST = [[NOTE_D_D_SHARP.dup, (0..10)], [NOTE_E_NATURAL.dup, (0..10)],\
                [NOTE_F_FLAT, (0..10)]].freeze
F_PITCH_TEST = [[NOTE_E_SHARP.dup, (0..10)], [NOTE_F_NATURAL.dup, (0..10)],\
                [NOTE_G_D_FLAT, (0..10)]].freeze
Gb_PITCH_TEST = [[NOTE_E_D_SHARP.dup, (0..10)], [NOTE_F_SHARP.dup, (0..10)],\
                 [NOTE_G_FLAT, (0..10)]].freeze
G_PITCH_TEST = [[NOTE_F_D_SHARP.dup, (0..10)], [NOTE_G_NATURAL.dup, (0..10)],\
                [NOTE_A_D_FLAT, (0..10)]].freeze
Ab_PITCH_TEST = [[NOTE_G_SHARP.dup, (0..10)], [NOTE_A_FLAT, (0..10)]].freeze
A_PITCH_TEST = [[NOTE_G_D_SHARP.dup, (0..10)], [NOTE_A_NATURAL.dup, (0..10)],\
                [NOTE_B_D_FLAT, (0..10)]].freeze
Bb_PITCH_TEST = [[NOTE_A_SHARP.dup, (0..10)], [NOTE_B_FLAT.dup, (0..10)],\
                 [NOTE_C_D_FLAT, (1..11)]].freeze
B_PITCH_TEST = [[NOTE_A_D_SHARP.dup, (0..10)], [NOTE_B_NATURAL.dup, (0..10)],\
                [NOTE_C_FLAT, (1..11)]].freeze

describe Pitch do
  describe '#calc_frequency' do
    it 'Calculates All C note frequencies correctly for equal temperment with Baroque defined A415' do
      C_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_C0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All C note frequencies correctly for equal temperment with ISO defined A440' do
      C_PITCH_TEST.each do |n, range|
        freq = ET_ISO_C0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All C note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of C' do
      C_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::C[Note::Letter::BASE_VAL_INDEX])
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All C note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      C_PITCH_TEST.each do |n, range|
        freq = ET_ISO_C0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Db note frequencies correctly for equal temperment with Baroque defined A415' do
      Db_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_Db0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Db note frequencies correctly for equal temperment with ISO defined A440' do
      Db_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Db0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Db note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of Db' do
      Db_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::D[Note::Letter::BASE_VAL_INDEX] - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Db note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      Db_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Db0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All D note frequencies correctly for equal temperment with Baroque defined A415' do
      D_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_D0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All D note frequencies correctly for equal temperment with ISO defined A440' do
      D_PITCH_TEST.each do |n, range|
        freq = ET_ISO_D0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All D note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of D' do
      D_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::D[Note::Letter::BASE_VAL_INDEX])
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All D note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      D_PITCH_TEST.each do |n, range|
        freq = ET_ISO_D0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Eb note frequencies correctly for equal temperment with Baroque defined A415' do
      Eb_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_Eb0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Eb note frequencies correctly for equal temperment with ISO defined A440' do
      Eb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Eb0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Eb note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of Eb' do
      Eb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::E[Note::Letter::BASE_VAL_INDEX] - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Eb note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      Eb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Eb0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All E note frequencies correctly for equal temperment with Baroque defined A415' do
      E_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_E0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All E note frequencies correctly for equal temperment with ISO defined A440' do
      E_PITCH_TEST.each do |n, range|
        freq = ET_ISO_E0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All E note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of E' do
      E_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::E[Note::Letter::BASE_VAL_INDEX])
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All E note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      E_PITCH_TEST.each do |n, range|
        freq = ET_ISO_E0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All F note frequencies correctly for equal temperment with Baroque defined A415' do
      F_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_F0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All F note frequencies correctly for equal temperment with ISO defined A440' do
      F_PITCH_TEST.each do |n, range|
        freq = ET_ISO_F0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All F note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of F' do
      F_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::F[Note::Letter::BASE_VAL_INDEX])
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All F note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      F_PITCH_TEST.each do |n, range|
        freq = ET_ISO_F0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Gb note frequencies correctly for equal temperment with Baroque defined A415' do
      Gb_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_Gb0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Gb note frequencies correctly for equal temperment with ISO defined A440' do
      Gb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Gb0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Gb note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of Gb' do
      Gb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::G[Note::Letter::BASE_VAL_INDEX] - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Gb note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      Gb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Gb0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All G note frequencies correctly for equal temperment with Baroque defined A415' do
      G_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_G0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All G note frequencies correctly for equal temperment with ISO defined A440' do
      G_PITCH_TEST.each do |n, range|
        freq = ET_ISO_G0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All G note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of G' do
      G_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::G[Note::Letter::BASE_VAL_INDEX])
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All G note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      G_PITCH_TEST.each do |n, range|
        freq = ET_ISO_G0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Ab note frequencies correctly for equal temperment with Baroque defined A415' do
      Ab_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_Ab0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Ab note frequencies correctly for equal temperment with ISO defined A440' do
      Ab_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Ab0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Ab note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of Ab' do
      Ab_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::A[Note::Letter::BASE_VAL_INDEX] - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Ab note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      Ab_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Ab0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All A note frequencies correctly for equal temperment with Baroque defined A415' do
      A_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All A note frequencies correctly for equal temperment with ISO defined A440' do
      A_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All A note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of A' do
      A_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::A[Note::Letter::BASE_VAL_INDEX])
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All A note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      A_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Bb note frequencies correctly for equal temperment with Baroque defined A415' do
      Bb_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_Bb0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Bb note frequencies correctly for equal temperment with ISO defined A440' do
      Bb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Bb0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Bb note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of Bb' do
      Bb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::B[Note::Letter::BASE_VAL_INDEX] - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All Bb note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      Bb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Bb0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All B note frequencies correctly for equal temperment with Baroque defined A415' do
      B_PITCH_TEST.each do |n, range|
        freq = ET_BAROQUE_B0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_pitch: Pitch::BAROQUE_REFERENCE_PITCH)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All B note frequencies correctly for equal temperment with ISO defined A440' do
      Bb_PITCH_TEST.each do |n, range|
        freq = ET_ISO_Bb0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All B note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence start of B' do
      B_PITCH_TEST.each do |n, range|
        freq = ET_ISO_A0_FREQ
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_val: Note::Letter::B[Note::Letter::BASE_VAL_INDEX])
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end

    it 'Calculates All B note frequencies correctly for equal temperment with ISO defined A440 with an alternative refence for octave' do
      B_PITCH_TEST.each do |n, range|
        freq = ET_ISO_B0_FREQ * 2
        range.each do |i|
          n.octave = i
          n.calc_frequency(ref_octave: Pitch::MIDDLE_OCTAVE - 1)
          expect(n.frequency.round(ROUND_ACCURACY)).to \
            eq(freq.round(ROUND_ACCURACY))
          freq *= 2
        end
      end
    end
  end
end
