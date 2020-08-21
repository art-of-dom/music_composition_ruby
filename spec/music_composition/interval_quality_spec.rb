# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

PVAL_INDEX = Interval::Quality::BASE_PERFECT_VAL_INDEX
MVAL_INDEX = Interval::Quality::BASE_MAJOR_VAL_INDEX
NAME_INDEX = Interval::Quality::NAME_INDEX

describe Interval::Quality do
  it 'Has correct quality enums defined as keys' do
    expect(described_class.keys).to eq %i[D_DIMINISHED DIMINISHED MINOR
                                          MAJOR PERFECT AUGMENTED
                                          D_AUGMENTED]
  end

  it 'Has correct quality enums defined as values' do
    expect(described_class.values).to eq [[-2, -3, 'dd'], [-1, -2, 'd'],\
                                          [nil, -1, 'm'], [nil, 0, 'M'],\
                                          [0, nil, 'P'], [1, 1, 'A'],\
                                          [2, 2, 'AA']]
  end

  it 'Parses quality doublely diminished correctly' do
    expect(described_class.parse('D_DIMINISHED')).to\
      eq(Interval::Quality::D_DIMINISHED)
    expect(described_class.parse('d_diminished')).to\
      eq(Interval::Quality::D_DIMINISHED)
    expect(described_class.parse('D_diminished')).to\
      eq(Interval::Quality::D_DIMINISHED)
    expect(described_class.parse('d_DIMINISHED')).to\
      eq(Interval::Quality::D_DIMINISHED)
    expect(described_class.parse('D_Diminished')).to\
      eq(Interval::Quality::D_DIMINISHED)
  end

  it 'Parses quality diminished correctly' do
    expect(described_class.parse('DIMINISHED')).to\
      eq(Interval::Quality::DIMINISHED)
    expect(described_class.parse('diminished')).to\
      eq(Interval::Quality::DIMINISHED)
    expect(described_class.parse('Diminished')).to\
      eq(Interval::Quality::DIMINISHED)
    expect(described_class.parse('dIMINISHED')).to\
      eq(Interval::Quality::DIMINISHED)
    expect(described_class.parse('DiMiNiShEd')).to\
      eq(Interval::Quality::DIMINISHED)
  end

  it 'Parses quality minor correctly' do
    expect(described_class.parse('MINOR')).to eq(Interval::Quality::MINOR)
    expect(described_class.parse('minor')).to eq(Interval::Quality::MINOR)
    expect(described_class.parse('Minor')).to eq(Interval::Quality::MINOR)
    expect(described_class.parse('mINOR')).to eq(Interval::Quality::MINOR)
    expect(described_class.parse('MiNoR')).to eq(Interval::Quality::MINOR)
  end

  it 'Parses quality major correctly' do
    expect(described_class.parse('MAJOR')).to eq(Interval::Quality::MAJOR)
    expect(described_class.parse('major')).to eq(Interval::Quality::MAJOR)
    expect(described_class.parse('Major')).to eq(Interval::Quality::MAJOR)
    expect(described_class.parse('mAJOR')).to eq(Interval::Quality::MAJOR)
    expect(described_class.parse('MaJoR')).to eq(Interval::Quality::MAJOR)
  end

  it 'Parses quality perfect correctly' do
    expect(described_class.parse('PERFECT')).to eq(Interval::Quality::PERFECT)
    expect(described_class.parse('perfect')).to eq(Interval::Quality::PERFECT)
    expect(described_class.parse('Perfect')).to eq(Interval::Quality::PERFECT)
    expect(described_class.parse('pERFECT')).to eq(Interval::Quality::PERFECT)
    expect(described_class.parse('PeRfEcT')).to eq(Interval::Quality::PERFECT)
  end

  it 'Parses quality augmented correctly' do
    expect(described_class.parse('AUGMENTED')).to\
      eq(Interval::Quality::AUGMENTED)
    expect(described_class.parse('augmented')).to\
      eq(Interval::Quality::AUGMENTED)
    expect(described_class.parse('Augmented')).to\
      eq(Interval::Quality::AUGMENTED)
    expect(described_class.parse('aUGMENTED')).to\
      eq(Interval::Quality::AUGMENTED)
    expect(described_class.parse('AuGmEnTeD')).to\
      eq(Interval::Quality::AUGMENTED)
  end

  it 'Parses quality doublely augmented correctly' do
    expect(described_class.parse('D_AUGMENTED')).to\
      eq(Interval::Quality::D_AUGMENTED)
    expect(described_class.parse('d_augmented')).to\
      eq(Interval::Quality::D_AUGMENTED)
    expect(described_class.parse('D_augmented')).to\
      eq(Interval::Quality::D_AUGMENTED)
    expect(described_class.parse('d_AUGMENTED')).to\
      eq(Interval::Quality::D_AUGMENTED)
    expect(described_class.parse('D_Augmented')).to\
      eq(Interval::Quality::D_AUGMENTED)
  end

  it 'Evaluates quality doublely diminished enum correctly' do
    expect(Interval::Quality::D_DIMINISHED[PVAL_INDEX]).to eq(-2)
    expect(Interval::Quality::D_DIMINISHED[MVAL_INDEX]).to eq(-3)
    expect(Interval::Quality::D_DIMINISHED[NAME_INDEX]).to eq('dd')
  end

  it 'Evaluates quality diminished enum correctly' do
    expect(Interval::Quality::DIMINISHED[PVAL_INDEX]).to eq(-1)
    expect(Interval::Quality::DIMINISHED[MVAL_INDEX]).to eq(-2)
    expect(Interval::Quality::DIMINISHED[NAME_INDEX]).to eq('d')
  end

  it 'Evaluates quality minor enum correctly' do
    expect(Interval::Quality::MINOR[PVAL_INDEX]).to eq(nil)
    expect(Interval::Quality::MINOR[MVAL_INDEX]).to eq(-1)
    expect(Interval::Quality::MINOR[NAME_INDEX]).to eq('m')
  end

  it 'Evaluates quality major enum correctly' do
    expect(Interval::Quality::MAJOR[PVAL_INDEX]).to eq(nil)
    expect(Interval::Quality::MAJOR[MVAL_INDEX]).to eq(0)
    expect(Interval::Quality::MAJOR[NAME_INDEX]).to eq('M')
  end

  it 'Evaluates quality perfect enum correctly' do
    expect(Interval::Quality::PERFECT[PVAL_INDEX]).to eq(0)
    expect(Interval::Quality::PERFECT[MVAL_INDEX]).to eq(nil)
    expect(Interval::Quality::PERFECT[NAME_INDEX]).to eq('P')
  end

  it 'Evaluates quality augmented enum correctly' do
    expect(Interval::Quality::AUGMENTED[PVAL_INDEX]).to eq(1)
    expect(Interval::Quality::AUGMENTED[MVAL_INDEX]).to eq(1)
    expect(Interval::Quality::AUGMENTED[NAME_INDEX]).to eq('A')
  end

  it 'Evaluates quality doublely augmented enum correctly' do
    expect(Interval::Quality::D_AUGMENTED[PVAL_INDEX]).to eq(2)
    expect(Interval::Quality::D_AUGMENTED[MVAL_INDEX]).to eq(2)
    expect(Interval::Quality::D_AUGMENTED[NAME_INDEX]).to eq('AA')
  end
end
