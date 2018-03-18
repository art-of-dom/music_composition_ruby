# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Interval do
  it 'Calculates a doublely diminished third (dd3) up correctly' do
    note1 = [NOTE_C_SHARP.dup, NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup,\
             NOTE_F_SHARP.dup, NOTE_G_SHARP.dup, NOTE_A_NATURAL.dup,\
             NOTE_B_NATURAL.dup]
    note2 = [NOTE_E_D_FLAT.dup, NOTE_F_D_FLAT.dup, NOTE_G_D_FLAT.dup,\
             NOTE_A_D_FLAT.dup, NOTE_B_D_FLAT.dup, NOTE_C_D_FLAT.dup,\
             NOTE_D_D_FLAT.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2)

      expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(1)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a doublely diminished third (dd3) down correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_NATURAL.dup, NOTE_E_FLAT.dup,\
             NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_FLAT.dup,\
             NOTE_B_FLAT.dup]
    note2 = [NOTE_A_D_SHARP.dup, NOTE_B_D_SHARP.dup, NOTE_C_D_SHARP.dup,\
             NOTE_D_D_SHARP.dup, NOTE_E_D_SHARP.dup, NOTE_F_D_SHARP.dup,\
             NOTE_G_D_SHARP.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(1)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a diminished third (d3) up correctly' do
    note2 = [NOTE_E_D_FLAT.dup, NOTE_F_FLAT.dup, NOTE_G_FLAT.dup,\
             NOTE_A_D_FLAT.dup, NOTE_B_D_FLAT.dup, NOTE_C_FLAT.dup,\
             NOTE_D_FLAT.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2)

      expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(2)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a diminished third (d3) down correctly' do
    note2 = [NOTE_A_SHARP.dup, NOTE_B_SHARP.dup, NOTE_C_D_SHARP.dup,\
             NOTE_D_SHARP.dup, NOTE_E_SHARP.dup, NOTE_F_D_SHARP.dup,\
             NOTE_G_D_SHARP.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(2)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a minor third (m3) up correctly' do
    note2 = [NOTE_E_FLAT.dup, NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup,\
             NOTE_A_FLAT.dup, NOTE_B_FLAT.dup, NOTE_C_NATURAL.dup,\
             NOTE_D_NATURAL.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2)

      expect(interval.quality).to eq(Interval::Quality::MINOR)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(3)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a minor third (m3) down correctly' do
    note2 = [NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup, NOTE_C_SHARP.dup,\
             NOTE_D_NATURAL.dup, NOTE_E_NATURAL.dup, NOTE_F_SHARP.dup,\
             NOTE_G_SHARP.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::MINOR)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(3)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a major third (M3) up correctly' do
    note2 = [NOTE_E_NATURAL.dup, NOTE_F_SHARP.dup, NOTE_G_SHARP.dup,\
             NOTE_A_NATURAL.dup, NOTE_B_NATURAL.dup, NOTE_C_SHARP.dup,\
             NOTE_D_SHARP.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2)

      expect(interval.quality).to eq(Interval::Quality::MAJOR)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(4)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a Major third (M3) down correctly' do
    note2 = [NOTE_A_FLAT.dup, NOTE_B_FLAT.dup, NOTE_C_NATURAL.dup,\
             NOTE_D_FLAT.dup, NOTE_E_FLAT.dup, NOTE_F_NATURAL.dup,\
             NOTE_G_NATURAL.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::MAJOR)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(4)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a Augmented third (A3) up correctly' do
    note2 = [NOTE_E_SHARP.dup, NOTE_F_D_SHARP.dup, NOTE_G_D_SHARP.dup,\
             NOTE_A_SHARP.dup, NOTE_B_SHARP.dup, NOTE_C_D_SHARP.dup,\
             NOTE_D_D_SHARP.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2)

      expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(5)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a Augmented third (A3) down correctly' do
    note2 = [NOTE_A_D_FLAT.dup, NOTE_B_D_FLAT.dup, NOTE_C_FLAT.dup,\
             NOTE_D_D_FLAT.dup, NOTE_E_D_FLAT.dup, NOTE_F_FLAT.dup,\
             NOTE_G_FLAT.dup]

    NATURAL_NOTE_ARRAY.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(5)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end

  it 'Calculates a doublely Augmented third (AA3) up correctly' do
    note1 = [NOTE_C_NATURAL.dup, NOTE_D_FLAT.dup, NOTE_E_FLAT.dup,\
             NOTE_F_NATURAL.dup, NOTE_G_NATURAL.dup, NOTE_A_FLAT.dup,\
             NOTE_B_FLAT.dup]
    note2 = [NOTE_E_D_SHARP.dup, NOTE_F_D_SHARP.dup, NOTE_G_D_SHARP.dup,\
             NOTE_A_D_SHARP.dup, NOTE_B_D_SHARP.dup, NOTE_C_D_SHARP.dup,\
             NOTE_D_D_SHARP.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2)

      expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(6)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates a doublely Augmented third (AA3) down correctly' do
    note1 = [NOTE_C_SHARP.dup, NOTE_D_SHARP.dup, NOTE_E_NATURAL.dup,\
             NOTE_F_SHARP.dup, NOTE_G_SHARP.dup, NOTE_A_NATURAL.dup,\
             NOTE_B_NATURAL.dup]
    note2 = [NOTE_A_D_FLAT.dup, NOTE_B_D_FLAT.dup, NOTE_C_D_FLAT.dup,\
             NOTE_D_D_FLAT.dup, NOTE_E_D_FLAT.dup, NOTE_F_D_FLAT.dup,\
             NOTE_G_D_FLAT.dup]

    note1.zip(note2).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
      expect(interval.letter_distance).to eq(2)
      expect(interval.val_distance).to eq(6)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end
end
