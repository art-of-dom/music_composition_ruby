# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicComposition

describe Interval::Quality do
  it 'Has correct quality enums defined as keys' do
    expect(Interval::Quality.keys).to eq [:D_DIMINISHED, :DIMINISHED, :MINOR, :MAJOR, :PERFECT, :AUGMENTED, :D_AUGMENTED]
  end

  it 'Has correct quality enums defined as values' do
    expect(Interval::Quality.values).to eq [[-2, -3, 'dd'], [-1, -2, 'd'], [nil, -1, 'm'], [nil, 0, 'M'], [0, nil, 'P'], [1, 1, 'A'], [2, 2, 'AA']]
  end

  it 'Parses quality doublely diminished correctly' do
    expect(Interval::Quality.parse('D_DIMINISHED')).to eq(Interval::Quality::D_DIMINISHED)
    expect(Interval::Quality.parse('d_diminished')).to eq(Interval::Quality::D_DIMINISHED)
    expect(Interval::Quality.parse('D_diminished')).to eq(Interval::Quality::D_DIMINISHED)
    expect(Interval::Quality.parse('d_DIMINISHED')).to eq(Interval::Quality::D_DIMINISHED)
    expect(Interval::Quality.parse('D_Diminished')).to eq(Interval::Quality::D_DIMINISHED)
  end
  it 'Parses quality diminished correctly' do
    expect(Interval::Quality.parse('DIMINISHED')).to eq(Interval::Quality::DIMINISHED)
    expect(Interval::Quality.parse('diminished')).to eq(Interval::Quality::DIMINISHED)
    expect(Interval::Quality.parse('Diminished')).to eq(Interval::Quality::DIMINISHED)
    expect(Interval::Quality.parse('dIMINISHED')).to eq(Interval::Quality::DIMINISHED)
    expect(Interval::Quality.parse('DiMiNiShEd')).to eq(Interval::Quality::DIMINISHED)
  end
  it 'Parses quality minor correctly' do
    expect(Interval::Quality.parse('MINOR')).to eq(Interval::Quality::MINOR)
    expect(Interval::Quality.parse('minor')).to eq(Interval::Quality::MINOR)
    expect(Interval::Quality.parse('Minor')).to eq(Interval::Quality::MINOR)
    expect(Interval::Quality.parse('mINOR')).to eq(Interval::Quality::MINOR)
    expect(Interval::Quality.parse('MiNoR')).to eq(Interval::Quality::MINOR)
  end
  it 'Parses quality major correctly' do
    expect(Interval::Quality.parse('MAJOR')).to eq(Interval::Quality::MAJOR)
    expect(Interval::Quality.parse('major')).to eq(Interval::Quality::MAJOR)
    expect(Interval::Quality.parse('Major')).to eq(Interval::Quality::MAJOR)
    expect(Interval::Quality.parse('mAJOR')).to eq(Interval::Quality::MAJOR)
    expect(Interval::Quality.parse('MaJoR')).to eq(Interval::Quality::MAJOR)
  end
  it 'Parses quality perfect correctly' do
    expect(Interval::Quality.parse('PERFECT')).to eq(Interval::Quality::PERFECT)
    expect(Interval::Quality.parse('perfect')).to eq(Interval::Quality::PERFECT)
    expect(Interval::Quality.parse('Perfect')).to eq(Interval::Quality::PERFECT)
    expect(Interval::Quality.parse('pERFECT')).to eq(Interval::Quality::PERFECT)
    expect(Interval::Quality.parse('PeRfEcT')).to eq(Interval::Quality::PERFECT)
  end
  it 'Parses quality augmented correctly' do
    expect(Interval::Quality.parse('AUGMENTED')).to eq(Interval::Quality::AUGMENTED)
    expect(Interval::Quality.parse('augmented')).to eq(Interval::Quality::AUGMENTED)
    expect(Interval::Quality.parse('Augmented')).to eq(Interval::Quality::AUGMENTED)
    expect(Interval::Quality.parse('aUGMENTED')).to eq(Interval::Quality::AUGMENTED)
    expect(Interval::Quality.parse('AuGmEnTeD')).to eq(Interval::Quality::AUGMENTED)
  end
  it 'Parses quality doublely augmented correctly' do
    expect(Interval::Quality.parse('D_AUGMENTED')).to eq(Interval::Quality::D_AUGMENTED)
    expect(Interval::Quality.parse('d_augmented')).to eq(Interval::Quality::D_AUGMENTED)
    expect(Interval::Quality.parse('D_augmented')).to eq(Interval::Quality::D_AUGMENTED)
    expect(Interval::Quality.parse('d_AUGMENTED')).to eq(Interval::Quality::D_AUGMENTED)
    expect(Interval::Quality.parse('D_Augmented')).to eq(Interval::Quality::D_AUGMENTED)
  end
  it 'Evaluates quality doublely diminished enum correctly' do
    expect(Interval::Quality::D_DIMINISHED[Interval::Quality::BASE_PERFECT_VAL_INDEX]).to eq(-2)
    expect(Interval::Quality::D_DIMINISHED[Interval::Quality::BASE_MAJOR_VAL_INDEX]).to eq(-3)
    expect(Interval::Quality::D_DIMINISHED[Interval::Quality::NAME_INDEX]).to eq('dd')
  end
  it 'Evaluates quality diminished enum correctly' do
    expect(Interval::Quality::DIMINISHED[Interval::Quality::BASE_PERFECT_VAL_INDEX]).to eq(-1)
    expect(Interval::Quality::DIMINISHED[Interval::Quality::BASE_MAJOR_VAL_INDEX]).to eq(-2)
    expect(Interval::Quality::DIMINISHED[Interval::Quality::NAME_INDEX]).to eq('d')
  end
  it 'Evaluates quality minor enum correctly' do
    expect(Interval::Quality::MINOR[Interval::Quality::BASE_PERFECT_VAL_INDEX]).to eq(nil)
    expect(Interval::Quality::MINOR[Interval::Quality::BASE_MAJOR_VAL_INDEX]).to eq(-1)
    expect(Interval::Quality::MINOR[Interval::Quality::NAME_INDEX]).to eq('m')
  end
  it 'Evaluates quality major enum correctly' do
    expect(Interval::Quality::MAJOR[Interval::Quality::BASE_PERFECT_VAL_INDEX]).to eq(nil)
    expect(Interval::Quality::MAJOR[Interval::Quality::BASE_MAJOR_VAL_INDEX]).to eq(0)
    expect(Interval::Quality::MAJOR[Interval::Quality::NAME_INDEX]).to eq('M')
  end
  it 'Evaluates quality perfect enum correctly' do
    expect(Interval::Quality::PERFECT[Interval::Quality::BASE_PERFECT_VAL_INDEX]).to eq(0)
    expect(Interval::Quality::PERFECT[Interval::Quality::BASE_MAJOR_VAL_INDEX]).to eq(nil)
    expect(Interval::Quality::PERFECT[Interval::Quality::NAME_INDEX]).to eq('P')
  end
  it 'Evaluates quality augmented enum correctly' do
    expect(Interval::Quality::AUGMENTED[Interval::Quality::BASE_PERFECT_VAL_INDEX]).to eq(1)
    expect(Interval::Quality::AUGMENTED[Interval::Quality::BASE_MAJOR_VAL_INDEX]).to eq(1)
    expect(Interval::Quality::AUGMENTED[Interval::Quality::NAME_INDEX]).to eq('A')
  end
  it 'Evaluates quality doublely augmented enum correctly' do
    expect(Interval::Quality::D_AUGMENTED[Interval::Quality::BASE_PERFECT_VAL_INDEX]).to eq(2)
    expect(Interval::Quality::D_AUGMENTED[Interval::Quality::BASE_MAJOR_VAL_INDEX]).to eq(2)
    expect(Interval::Quality::D_AUGMENTED[Interval::Quality::NAME_INDEX]).to eq('AA')
  end
end

describe Interval do
  it 'Raises ArgumentError if both notes are not present' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')

    expect { Interval.new }.to raise_error ArgumentError
    expect { Interval.new(n1: n) }.to raise_error ArgumentError
    expect { Interval.new(n2: n) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in ref_comp_notes if direction nil' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n, n2: n)

    interval.instance_variable_set(:@direction, nil)
    expect(interval.direction).to eq(nil)

    expect { interval.send(:ref_comp_notes) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in letter_distance_to_val if letter_distance is nil' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n, n2: n)

    interval.instance_variable_set(:@letter_distance, nil)
    expect(interval.letter_distance).to eq(nil)

    expect { interval.send(:letter_distance_to_val) }.to raise_error ArgumentError
  end

  it 'Raises ArgumentError in index_lookup if letter_distance is nil' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n, n2: n)

    interval.instance_variable_set(:@letter_distance, nil)
    expect(interval.letter_distance).to eq(nil)

    expect { interval.send(:index_lookup) }.to raise_error ArgumentError
  end
end
