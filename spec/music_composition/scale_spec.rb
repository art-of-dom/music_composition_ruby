# frozen_string_literal: true

require 'spec_helper'
require 'music_composition/defines/note_defines'

include MusicComposition

describe Scale do
  it 'Raises ArgumentError if root note not given' do
    expect { described_class.new(name: 'Major') }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError if scale name not given' do
    expect { described_class.new(root: NOTE_C_NATURAL) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError if scale name not found' do
    expect { described_class.new(root: NOTE_C_FLAT, name: 'idk') }.to raise_error ArgumentError
  end

  it 'Creates Major scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Major')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Major')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Major')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_SHARP)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Dorian scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Dorian')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Dorian')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Dorian')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Phrygian scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Phrygian')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_D_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Phrygian')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Phrygian')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Lydian scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Lydian')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Lydian')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Lydian')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_D_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_SHARP)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Mixolydin scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Mixolydin')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Mixolydin')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Mixolydin')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Minor scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Minor')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_D_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Minor')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Minor')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Locrian scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Locrian')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_D_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_D_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Locrian')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Locrian')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Harmonic Minor scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Harmonic Minor')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_D_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Harmonic Minor')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Harmonic Minor')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_SHARP)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Locrian #6 scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Locrian #6')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_D_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Locrian #6')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Locrian #6')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Ionian #5 scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Ionian #5')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Ionian #5')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Ionian #5')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_D_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_SHARP)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Dorian #4 scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Dorian #4')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Dorian #4')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Dorian #4')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_D_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Phrygian Dominant scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Phrygian Dominant')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_D_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Phrygian Dominant')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Phrygian Dominant')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Lydian #2 scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Lydian #2')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Lydian #2')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Lydian #2')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_D_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_SHARP)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Super Locrian b7 scales correctly' do
    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Super Locrian b7')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Super Locrian b7')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Melodic Minor scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Melodic Minor')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Melodic Minor')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Melodic Minor')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_SHARP)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Dorian b2 scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Dorian b2')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Dorian b2')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Dorian b2')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Lydian #5 scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Lydian #5')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Lydian #5')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Lydian #5')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_D_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_D_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_SHARP)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Lydian Dominant scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Lydian Dominant')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Lydian Dominant')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Lydian Dominant')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_D_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_SHARP)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Mixolydin b6 scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Mixolydin b6')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_D_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Mixolydin b6')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Mixolydin b6')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_SHARP)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_SHARP)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Half Diminished scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Half Diminished')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_D_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_D_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Half Diminished')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Half Diminished')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_SHARP)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_SHARP)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end

  it 'Creates Super Locrian scales correctly' do
    scale = described_class.new(root: NOTE_C_FLAT, name: 'Super Locrian')

    expect(scale.notes[0].equal?(NOTE_C_FLAT)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_D_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_D_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_D_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_D_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_D_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_FLAT)).to eq true

    scale = described_class.new(root: NOTE_C_NATURAL, name: 'Super Locrian')

    expect(scale.notes[0].equal?(NOTE_C_NATURAL)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_FLAT)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_FLAT)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_FLAT)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_FLAT)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_FLAT)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_FLAT)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_NATURAL)).to eq true

    scale = described_class.new(root: NOTE_C_SHARP, name: 'Super Locrian')

    expect(scale.notes[0].equal?(NOTE_C_SHARP)).to eq true
    expect(scale.notes[1].equal?(NOTE_D_NATURAL)).to eq true
    expect(scale.notes[2].equal?(NOTE_E_NATURAL)).to eq true
    expect(scale.notes[3].equal?(NOTE_F_NATURAL)).to eq true
    expect(scale.notes[4].equal?(NOTE_G_NATURAL)).to eq true
    expect(scale.notes[5].equal?(NOTE_A_NATURAL)).to eq true
    expect(scale.notes[6].equal?(NOTE_B_NATURAL)).to eq true
    expect(scale.notes[7].equal?(NOTE_C_SHARP)).to eq true
  end
end
