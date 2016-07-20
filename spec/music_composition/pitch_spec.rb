# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
require 'music_composition/defines/pitch_defines'
require 'pp'
include MusicComposition

describe Pitch do
  it 'Calculates All C note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'C', quality: 'NATURAL')
    freq = ET_ISO_C0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'B', quality: 'SHARP')
    freq = ET_ISO_C0_freq
    (-1..9).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'D', quality: 'D_FLAT')
    freq = ET_ISO_C0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All Db note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'B', quality: 'D_SHARP')
    freq = ET_ISO_Db0_freq
    (-1..9).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'C', quality: 'SHARP')
    freq = ET_ISO_Db0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'D', quality: 'FLAT')
    freq = ET_ISO_Db0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All D note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')
    freq = ET_ISO_D0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'D', quality: 'NATURAL')
    freq = ET_ISO_D0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'E', quality: 'D_FLAT')
    freq = ET_ISO_D0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All Eb note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'D', quality: 'SHARP')
    freq = ET_ISO_Eb0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'E', quality: 'FLAT')
    freq = ET_ISO_Eb0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'F', quality: 'D_FLAT')
    freq = ET_ISO_Eb0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All E note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'D', quality: 'D_SHARP')
    freq = ET_ISO_E0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'E', quality: 'NATURAL')
    freq = ET_ISO_E0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'F', quality: 'FLAT')
    freq = ET_ISO_E0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All F note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'E', quality: 'SHARP')
    freq = ET_ISO_F0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'F', quality: 'NATURAL')
    freq = ET_ISO_F0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'G', quality: 'D_FLAT')
    freq = ET_ISO_F0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All Gb note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'E', quality: 'D_SHARP')
    freq = ET_ISO_Gb0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'F', quality: 'SHARP')
    freq = ET_ISO_Gb0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'G', quality: 'FLAT')
    freq = ET_ISO_Gb0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All G note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'F', quality: 'D_SHARP')
    freq = ET_ISO_G0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'G', quality: 'NATURAL')
    freq = ET_ISO_G0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'A', quality: 'D_FLAT')
    freq = ET_ISO_G0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All Ab note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'G', quality: 'SHARP')
    freq = ET_ISO_Ab0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'A', quality: 'FLAT')
    freq = ET_ISO_Ab0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All A note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'G', quality: 'D_SHARP')
    freq = ET_ISO_A0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'A', quality: 'NATURAL')
    freq = ET_ISO_A0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'B', quality: 'D_FLAT')
    freq = ET_ISO_A0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All Bb note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'A', quality: 'SHARP')
    freq = ET_ISO_Bb0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'B', quality: 'FLAT')
    freq = ET_ISO_Bb0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'C', quality: 'D_FLAT')
    freq = ET_ISO_Bb0_freq
    (1..11).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end

  it 'Calculates All B note frequencies correctly for equal temperment with ISO defined A440' do
    n = Note.new(letter: 'A', quality: 'D_SHARP')
    freq = ET_ISO_B0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'B', quality: 'NATURAL')
    freq = ET_ISO_B0_freq
    (0..10).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end

    n = Note.new(letter: 'C', quality: 'FLAT')
    freq = ET_ISO_B0_freq
    (1..11).each do |i|
      n.octave = i
      n.calc_frequency
      expect(n.frequency.round(ROUND_ACCURACY)).to eq(freq.round(ROUND_ACCURACY))
      freq *= 2
    end
  end
end
