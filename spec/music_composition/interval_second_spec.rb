# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
require 'music_composition/defines/note_defines'
include MusicComposition

describe Interval do
  it 'Calculates a diminished second (d2) up correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_D_D_FLAT.dup, NOTE_E_D_FLAT.dup, NOTE_F_FLAT.dup, NOTE_G_D_FLAT.dup, NOTE_A_D_FLAT.dup, NOTE_B_D_FLAT.dup, NOTE_C_FLAT.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2)

      expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(0)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a diminished Second (d2) down correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_B_SHARP.dup, NOTE_C_D_SHARP.dup, NOTE_D_D_SHARP.dup, NOTE_E_SHARP.dup, NOTE_F_D_SHARP.dup, NOTE_G_D_SHARP.dup, NOTE_A_D_SHARP.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(0)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a minor second (m2) up correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_D_FLAT.dup, NOTE_E_FLAT.dup, NOTE_F_NATURAL.dup, NOTE_G_FLAT.dup, NOTE_A_FLAT.dup, NOTE_B_FLAT.dup, NOTE_C_NATURAL.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2)

      expect(interval.quality).to eq(Interval::Quality::MINOR)
      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(1)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a minor Second (m2) down correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_B_NATURAL.dup, NOTE_C_SHARP.dup, NOTE_D_SHARP.dup, NOTE_E_NATURAL.dup, NOTE_F_SHARP.dup, NOTE_G_SHARP.dup, NOTE_A_SHARP.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2, direction: Interval::DOWN)

      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(1)
      expect(interval.quality).to eq(Interval::Quality::MINOR)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a major second (M2) up correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_SHARP.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup, NOTE_C_SHARP.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2)

      expect(interval.quality).to eq(Interval::Quality::MAJOR)
      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(2)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a Major Second (M2) down correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_B_FLAT.dup, NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_FLAT.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2, direction: Interval::DOWN)

      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(2)
      expect(interval.quality).to eq(Interval::Quality::MAJOR)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a Augmented second (A2) up correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_D_SHARP.dup, NOTE_E_SHARP.dup, NOTE_F_D_SHARP.dup, NOTE_G_SHARP.dup, NOTE_A_SHARP.dup, NOTE_B_SHARP.dup, NOTE_C_D_SHARP.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2)

      expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(3)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a Augmented Second (A2) down correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_B_D_FLAT.dup, NOTE_C_FLAT.dup, NOTE_D_FLAT.dup, NOTE_E_D_FLAT.dup, NOTE_F_FLAT.dup, NOTE_G_FLAT.dup, NOTE_A_FLAT.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(3)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a doublely Augmented second (AA2) up correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_FLAT.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_FLAT.dup]
    note2 = [NOTE_D_D_SHARP.dup, NOTE_E_D_SHARP.dup, NOTE_F_D_SHARP.dup, NOTE_G_D_SHARP.dup, NOTE_A_D_SHARP.dup, NOTE_B_D_SHARP.dup, NOTE_C_D_SHARP.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2)

      expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(4)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a doublely Augmented Second (AA2) down correctly' do
    note1 = [NOTE_C_SHARP.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_SHARP.dup, NOTE_G_NATURAL.dup, NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup]
    note2 = [NOTE_B_D_FLAT.dup, NOTE_C_D_FLAT.dup, NOTE_D_D_FLAT.dup, NOTE_E_D_FLAT.dup, NOTE_F_D_FLAT.dup, NOTE_G_D_FLAT.dup, NOTE_A_D_FLAT.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(n1: n1, n2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
      expect(interval.letter_distance).to eq(1)
      expect(interval.val_distance).to eq(4)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end
end
