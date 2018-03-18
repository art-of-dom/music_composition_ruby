# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Interval do
  it 'Calculates Perfect Unison (P8) up correctly' do
    NATURAL_NOTE_OCT_3_ARRAY.zip(NATURAL_NOTE_OCT_4_ARRAY).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2)

      expect(interval.quality).to eq(Interval::Quality::PERFECT)
      expect(interval.letter_distance).to eq(7)
      expect(interval.val_distance).to eq(0)
      expect(interval.direction).to eq(Interval::UP)
    end
  end

  it 'Calculates Perfect Unison (P8) down correctly' do
    NATURAL_NOTE_OCT_4_ARRAY.zip(NATURAL_NOTE_OCT_3_ARRAY).each do |n1, n2|
      interval = described_class.new(note1: n1, note2: n2, direction: Interval::DOWN)

      expect(interval.quality).to eq(Interval::Quality::PERFECT)
      expect(interval.letter_distance).to eq(7)
      expect(interval.val_distance).to eq(0)
      expect(interval.direction).to eq(Interval::DOWN)
    end
  end
end
