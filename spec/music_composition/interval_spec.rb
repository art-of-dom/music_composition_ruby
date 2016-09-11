# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicComposition

describe Interval do
  it 'Raises ArgumentError if both notes are not present' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')

    expect { described_class.new }.to raise_error ArgumentError
    expect { described_class.new(n1: n) }.to raise_error ArgumentError
    expect { described_class.new(n2: n) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in ref_comp_notes if direction nil' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = described_class.new(n1: n, n2: n)

    interval.instance_variable_set(:@direction, nil)
    expect(interval.direction).to eq(nil)

    expect { interval.send(:ref_comp_notes) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in letter_distance_to_val if letter_distance is nil' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = described_class.new(n1: n, n2: n)

    interval.instance_variable_set(:@letter_distance, nil)
    expect(interval.letter_distance).to eq(nil)

    expect { interval.send(:letter_distance_to_val) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in index_lookup if letter_distance is nil' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = described_class.new(n1: n, n2: n)

    interval.instance_variable_set(:@letter_distance, nil)
    expect(interval.letter_distance).to eq(nil)

    expect { interval.send(:index_lookup) }.to raise_error ArgumentError
  end
end
