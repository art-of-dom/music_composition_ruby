# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
require 'music_composition/defines/note_defines'
require 'music_composition/helpers/note_compare'

include MusicComposition

describe Scale::Pattern do
  it 'Has correct patterns enums defined as keys' do
    expect(Scale::Pattern.keys).to eq [:DIATONIC, :HARMONIC, :MELODIC]
  end

  it 'Has correct patterns enums defined as values' do
    expect(Scale::Pattern.values[0]).to eq [[Scale::W, Scale::W, Scale::H, Scale::W, Scale::W, Scale::W, Scale::H], 'Major', 'Dorian', 'Phrygian', 'Lydian', 'Mixolydin', 'Minor', 'Locrian']
    expect(Scale::Pattern.values[1]).to eq [[Scale::W, Scale::H, Scale::W, Scale::W, Scale::H, Scale::A, Scale::H], 'Harmonic Minor', 'Locrian #6', 'Ionian #5', 'Dorian #4', 'Phrygian Dominant', 'Lydian #2', 'Super Locrian b7']
    expect(Scale::Pattern.values[2]).to eq [[Scale::W, Scale::H, Scale::W, Scale::W, Scale::W, Scale::W, Scale::H], 'Melodic Minor', 'Dorian b2', 'Lydian #5', 'Lydian Dominant', 'Mixolydin b6', 'Half Diminished', 'Super Locrian']
  end
end

describe Scale do
  it 'Raises ArgumentError if scale name not found' do
    expect { Scale.new(root: NOTE_C_FLAT, name: 'idk') }.to raise_error ArgumentError
  end

  it 'Creates Major scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Major')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Major')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Major')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_SHARP)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Dorian scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Dorian')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Dorian')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Dorian')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Phrygian scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Phrygian')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_D_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Phrygian')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Phrygian')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Lydian scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Lydian')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Lydian')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Lydian')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_D_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_SHARP)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Mixolydin scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Mixolydin')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Mixolydin')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Mixolydin')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Minor scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Minor')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_D_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Minor')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Minor')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Locrian scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Locrian')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_D_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_D_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Locrian')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Locrian')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Harmonic Minor scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Harmonic Minor')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_D_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Harmonic Minor')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Harmonic Minor')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_SHARP)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Locrian #6 scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Locrian #6')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_D_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Locrian #6')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Locrian #6')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Ionian #5 scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Ionian #5')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Ionian #5')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Ionian #5')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_D_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_SHARP)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Dorian #4 scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Dorian #4')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Dorian #4')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Dorian #4')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_D_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Phrygian Dominant scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Phrygian Dominant')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_D_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Phrygian Dominant')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Phrygian Dominant')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Lydian #2 scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Lydian #2')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Lydian #2')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Lydian #2')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_D_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_SHARP)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Super Locrian b7 scales correctly' do
    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Super Locrian b7')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Super Locrian b7')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Melodic Minor scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Melodic Minor')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Melodic Minor')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Melodic Minor')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_SHARP)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Dorian b2 scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Dorian b2')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Dorian b2')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Dorian b2')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Lydian #5 scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Lydian #5')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Lydian #5')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Lydian #5')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_D_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_D_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_SHARP)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Lydian Dominant scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Lydian Dominant')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Lydian Dominant')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Lydian Dominant')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_D_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_SHARP)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Mixolydin b6 scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Mixolydin b6')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_D_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Mixolydin b6')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Mixolydin b6')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_SHARP)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_SHARP)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Half Diminished scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Half Diminished')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_D_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_D_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Half Diminished')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Half Diminished')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_SHARP)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_SHARP)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end

  it 'Creates Super Locrian scales correctly' do
    scale = Scale.new(root: NOTE_C_FLAT, name: 'Super Locrian')

    expect(compare_note(scale.notes[0], NOTE_C_FLAT)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_D_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_D_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_D_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_D_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_D_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_FLAT)).to eq true

    scale = Scale.new(root: NOTE_C_NATURAL, name: 'Super Locrian')

    expect(compare_note(scale.notes[0], NOTE_C_NATURAL)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_FLAT)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_FLAT)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_FLAT)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_FLAT)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_FLAT)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_FLAT)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_NATURAL)).to eq true

    scale = Scale.new(root: NOTE_C_SHARP, name: 'Super Locrian')

    expect(compare_note(scale.notes[0], NOTE_C_SHARP)).to eq true
    expect(compare_note(scale.notes[1], NOTE_D_NATURAL)).to eq true
    expect(compare_note(scale.notes[2], NOTE_E_NATURAL)).to eq true
    expect(compare_note(scale.notes[3], NOTE_F_NATURAL)).to eq true
    expect(compare_note(scale.notes[4], NOTE_G_NATURAL)).to eq true
    expect(compare_note(scale.notes[5], NOTE_A_NATURAL)).to eq true
    expect(compare_note(scale.notes[6], NOTE_B_NATURAL)).to eq true
    expect(compare_note(scale.notes[7], NOTE_C_SHARP)).to eq true
  end
end
