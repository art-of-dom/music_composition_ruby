# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Scale::Pattern do
  it 'Has correct patterns enums defined as keys' do
    expect(described_class.keys).to eq %i[DIATONIC HARMONIC MELODIC]
  end

  it 'Has correct patterns enums defined for diatonic scales' do
    expect(described_class.values[0]).to eq [[Scale::W, Scale::W, Scale::H, Scale::W, Scale::W, Scale::W, Scale::H],
                                             'Major', 'Dorian', 'Phrygian', 'Lydian',
                                             'Mixolydin', 'Minor', 'Locrian']
  end

  it 'Has correct patterns enums defined for harmonic minor scales' do
    expect(described_class.values[1]).to eq [[Scale::W, Scale::H, Scale::W, Scale::W, Scale::H, Scale::A, Scale::H],
                                             'Harmonic Minor', 'Locrian #6', 'Ionian #5', 'Dorian #4',
                                             'Phrygian Dominant', 'Lydian #2', 'Super Locrian b7']
  end

  it 'Has correct patterns enums defined for melodic minor scales' do
    expect(described_class.values[2]).to eq [[Scale::W, Scale::H, Scale::W, Scale::W, Scale::W, Scale::W, Scale::H],
                                             'Melodic Minor', 'Dorian b2', 'Lydian #5', 'Lydian Dominant',
                                             'Mixolydin b6', 'Half Diminished', 'Super Locrian']
  end
end
