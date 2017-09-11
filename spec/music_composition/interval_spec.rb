# encoding: utf-8
# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Interval do
  it 'Raises ArgumentError if both notes are not present' do
    expect { described_class.new }.to raise_error ArgumentError
    expect { described_class.new(n1: NOTE_C_NATURAL.dup) }.to raise_error ArgumentError
    expect { described_class.new(n2: NOTE_C_NATURAL.dup) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in ref_comp_notes if direction nil' do
    interval = described_class.new(n1: NOTE_C_NATURAL.dup,\
                                   n2: NOTE_C_NATURAL.dup)

    interval.instance_variable_set(:@direction, nil)
    expect(interval.direction).to eq(nil)

    expect { interval.send(:ref_comp_notes) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in letter_distance_to_val if letter_distance is nil' do
    interval = described_class.new(n1: NOTE_C_NATURAL.dup,\
                                   n2: NOTE_C_NATURAL.dup)

    interval.instance_variable_set(:@letter_distance, nil)
    expect(interval.letter_distance).to eq(nil)

    expect { interval.send(:letter_distance_to_val) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in index_lookup if letter_distance is nil' do
    interval = described_class.new(n1: NOTE_C_NATURAL.dup,\
                                   n2: NOTE_C_NATURAL.dup)

    interval.instance_variable_set(:@letter_distance, nil)
    expect(interval.letter_distance).to eq(nil)

    expect { interval.send(:index_lookup) }.to raise_error ArgumentError
  end

  interval1 = described_class.new(n1: NOTE_C_NATURAL.dup,\
                                  n2: NOTE_D_NATURAL.dup)
  interval2 = described_class.new(n1: NOTE_D_NATURAL.dup,\
                                  n2: NOTE_E_NATURAL.dup)
  interval3 = described_class.new(n1: NOTE_C_NATURAL.dup,\
                                  n2: NOTE_E_D_FLAT.dup)
  interval4 = described_class.new(n1: NOTE_C_NATURAL.dup,\
                                  n2: NOTE_E_NATURAL.dup)
  describe '#interval_equal?' do
    it 'returns true for equal intervals' do
      expect(interval1).to be_interval_equal(interval2)
    end

    it 'returns false for intervals that are not equal' do
      expect(interval1).not_to be_interval_equal(interval3)
      expect(interval1).not_to be_interval_equal(interval4)
    end
  end

  describe '#interval_equivalent?' do
    it 'returns true for equivalent intervals' do
      expect(interval1).to be_interval_equivalent(interval2)
      expect(interval1).to be_interval_equivalent(interval3)
    end

    it 'returns false for intervals that are not equivalent' do
      expect(interval1).not_to be_interval_equivalent(interval4)
    end
  end

  describe '#invert' do
    it 'inverts intervals correctly' do
      interval1.invert
      expect(interval1.quality).to eq(Interval::Quality::MINOR)
      expect(interval1.letter_distance).to eq(6)
      expect(interval1.val_distance).to eq(10)
    end
  end

  describe '#name' do
    it 'gives the correct name for the interval' do
      expect(interval2.name).to eq('M2')
    end
  end
end
