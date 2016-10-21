# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicComposition

describe Note::Quality do
  it 'Has correct quality enums defined as keys' do
    expect(described_class.keys).to eq [:D_FLAT, :FLAT, :NATURAL, :SHARP, :D_SHARP]
  end

  it 'Has correct quality enums defined as values' do
    expect(described_class.values).to eq [[-2, '𝄫'], [-1, '♭'], [0, '♮'], [1, '♯'], [2, '𝄪']]
  end

  it 'Parses quality double flat correctly' do
    expect(described_class.parse('D_FLAT')).to eq(Note::Quality::D_FLAT)
    expect(described_class.parse('d_flat')).to eq(Note::Quality::D_FLAT)
    expect(described_class.parse('D_flat')).to eq(Note::Quality::D_FLAT)
    expect(described_class.parse('d_FLAT')).to eq(Note::Quality::D_FLAT)
    expect(described_class.parse('D_Flat')).to eq(Note::Quality::D_FLAT)
  end
  it 'Parses quality flat correctly' do
    expect(described_class.parse('FLAT')).to eq(Note::Quality::FLAT)
    expect(described_class.parse('flat')).to eq(Note::Quality::FLAT)
    expect(described_class.parse('Flat')).to eq(Note::Quality::FLAT)
    expect(described_class.parse('fLAT')).to eq(Note::Quality::FLAT)
    expect(described_class.parse('FlAt')).to eq(Note::Quality::FLAT)
  end
  it 'Parses quality natural correctly' do
    expect(described_class.parse('NATURAL')).to eq(Note::Quality::NATURAL)
    expect(described_class.parse('natural')).to eq(Note::Quality::NATURAL)
    expect(described_class.parse('Natural')).to eq(Note::Quality::NATURAL)
    expect(described_class.parse('nATURAL')).to eq(Note::Quality::NATURAL)
    expect(described_class.parse('NaTuRaL')).to eq(Note::Quality::NATURAL)
  end
  it 'Parses quality sharp correctly' do
    expect(described_class.parse('SHARP')).to eq(Note::Quality::SHARP)
    expect(described_class.parse('sharp')).to eq(Note::Quality::SHARP)
    expect(described_class.parse('Sharp')).to eq(Note::Quality::SHARP)
    expect(described_class.parse('sHARP')).to eq(Note::Quality::SHARP)
    expect(described_class.parse('ShArP')).to eq(Note::Quality::SHARP)
  end
  it 'Parses quality double sharp correctly' do
    expect(described_class.parse('D_SHARP')).to eq(Note::Quality::D_SHARP)
    expect(described_class.parse('d_sharp')).to eq(Note::Quality::D_SHARP)
    expect(described_class.parse('D_sharp')).to eq(Note::Quality::D_SHARP)
    expect(described_class.parse('d_SHARP')).to eq(Note::Quality::D_SHARP)
    expect(described_class.parse('D_Sharp')).to eq(Note::Quality::D_SHARP)
  end
  it 'Evaluates quality double flat enum correctly' do
    expect(Note::Quality::D_FLAT[Note::Quality::VAL_INDEX]).to eq(-2)
    expect(Note::Quality::D_FLAT[Note::Quality::NAME_INDEX]).to eq('𝄫')
  end
  it 'Evaluates quality flat enum correctly' do
    expect(Note::Quality::FLAT[Note::Quality::VAL_INDEX]).to eq(-1)
    expect(Note::Quality::FLAT[Note::Quality::NAME_INDEX]).to eq('♭')
  end
  it 'Evaluates quality natural enum correctly' do
    expect(Note::Quality::NATURAL[Note::Quality::VAL_INDEX]).to eq(0)
    expect(Note::Quality::NATURAL[Note::Quality::NAME_INDEX]).to eq('♮')
  end

  it 'Evaluates quality sharp enum correctly' do
    expect(Note::Quality::SHARP[Note::Quality::VAL_INDEX]).to eq(1)
    expect(Note::Quality::SHARP[Note::Quality::NAME_INDEX]).to eq('♯')
  end

  it 'Evaluates quality double sharp enum correctly' do
    expect(Note::Quality::D_SHARP[Note::Quality::VAL_INDEX]).to eq(2)
    expect(Note::Quality::D_SHARP[Note::Quality::NAME_INDEX]).to eq('𝄪')
  end

  describe '.find_by_val' do
    it 'finds correct quality given an value' do
      expect(described_class.find_by_val(0)).to eq([0, '♮'])
    end
  end

  describe '.max_val' do
    it 'returns the current max value found in the enum' do
      expect(described_class.max_val).to eq(2)
    end
  end

  describe '.min_val' do
    it 'returns the current min value found in the enum' do
      expect(described_class.min_val).to eq(-2)
    end
  end
end
