# encoding: utf-8
# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Interval do
  it 'Calculates Perfect Unison (P1) up correctly' do
    NATURAL_NOTE_ARRAY.zip(NATURAL_NOTE_ARRAY).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2)

      expect(interval.quality).to eq(Interval::Quality::PERFECT)
      expect(interval.letter_distance).to eq(0)
      expect(interval.val_distance).to eq(0)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates Perfect Unison (P1) down correctly' do
    NATURAL_NOTE_ARRAY.zip(NATURAL_NOTE_ARRAY).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::PERFECT)
      expect(interval.letter_distance).to eq(0)
      expect(interval.val_distance).to eq(0)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates Augmented Unison (A1) up correctly' do
    note2 = [NOTE_C_SHARP.dup, NOTE_D_SHARP.dup, NOTE_E_SHARP.dup,\
             NOTE_F_SHARP.dup, NOTE_G_SHARP.dup, NOTE_A_SHARP.dup,\
             NOTE_B_SHARP.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2)

      expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
      expect(interval.letter_distance).to eq(0)
      expect(interval.val_distance).to eq(1)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates Augmented Unison (A1) down correctly' do
    note2 = [NOTE_C_SHARP.dup, NOTE_D_SHARP.dup, NOTE_E_SHARP.dup,\
             NOTE_F_SHARP.dup, NOTE_G_SHARP.dup, NOTE_A_SHARP.dup,\
             NOTE_B_SHARP.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
      expect(interval.letter_distance).to eq(0)
      expect(interval.val_distance).to eq(1)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates doublely Augmented Unison (AA1) up correctly' do
    note2 = [NOTE_C_D_SHARP.dup, NOTE_D_D_SHARP.dup, NOTE_E_D_SHARP.dup,\
             NOTE_F_D_SHARP.dup, NOTE_G_D_SHARP.dup, NOTE_A_D_SHARP.dup,\
             NOTE_B_D_SHARP.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2)

      expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
      expect(interval.letter_distance).to eq(0)
      expect(interval.val_distance).to eq(2)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates doublely Augmented Unison (AA1) down correctly' do
    note2 = [NOTE_C_D_SHARP.dup, NOTE_D_D_SHARP.dup, NOTE_E_D_SHARP.dup,\
             NOTE_F_D_SHARP.dup, NOTE_G_D_SHARP.dup, NOTE_A_D_SHARP.dup,\
             NOTE_B_D_SHARP.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
      expect(interval.letter_distance).to eq(0)
      expect(interval.val_distance).to eq(2)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end
end
