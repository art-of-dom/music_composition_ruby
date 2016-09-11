# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicComposition

describe Note::Letter do
  it 'Has correct number of note letters' do
    expect(Note::Letter::NUMBER_OF_LETTERS).to eq 7
    expect(described_class.keys.count).to eq 7
  end

  it 'Has correct letter enums defined as keys' do
    expect(described_class.keys).to eq [:A, :B, :C, :D, :E, :F, :G]
  end

  it 'Has correct letter enums defined as values' do
    expect(described_class.values).to eq [[0, 9, 'A'], [1, 11, 'B'], [2, 0, 'C'], [3, 2, 'D'], [4, 4, 'E'], [5, 5, 'F'], [6, 7, 'G']]
  end

  it 'Parses letter A correctly' do
    expect(described_class.parse('a')).to eq(Note::Letter::A)
    expect(described_class.parse('A')).to eq(Note::Letter::A)
  end
  it 'Parses letter B correctly' do
    expect(described_class.parse('b')).to eq(Note::Letter::B)
    expect(described_class.parse('B')).to eq(Note::Letter::B)
  end
  it 'Parses letter C correctly' do
    expect(described_class.parse('c')).to eq(Note::Letter::C)
    expect(described_class.parse('C')).to eq(Note::Letter::C)
  end
  it 'Parses letter D correctly' do
    expect(described_class.parse('d')).to eq(Note::Letter::D)
    expect(described_class.parse('D')).to eq(Note::Letter::D)
  end
  it 'Parses letter E correctly' do
    expect(described_class.parse('e')).to eq(Note::Letter::E)
    expect(described_class.parse('E')).to eq(Note::Letter::E)
  end
  it 'Parses letter F correctly' do
    expect(described_class.parse('f')).to eq(Note::Letter::F)
    expect(described_class.parse('F')).to eq(Note::Letter::F)
  end
  it 'Parses letter G correctly' do
    expect(described_class.parse('g')).to eq(Note::Letter::G)
    expect(described_class.parse('G')).to eq(Note::Letter::G)
  end

  it 'Evaluates letter A enum correctly' do
    expect(Note::Letter::A[Note::Letter::ID_INDEX]).to eq(0)
    expect(Note::Letter::A[Note::Letter::BASE_VAL_INDEX]).to eq(9)
    expect(Note::Letter::A[Note::Letter::NAME_INDEX]).to eq('A')
  end
  it 'Evaluates letter B enum correctly' do
    expect(Note::Letter::B[Note::Letter::ID_INDEX]).to eq(1)
    expect(Note::Letter::B[Note::Letter::BASE_VAL_INDEX]).to eq(11)
    expect(Note::Letter::B[Note::Letter::NAME_INDEX]).to eq('B')
  end
  it 'Evaluates letter C enum correctly' do
    expect(Note::Letter::C[Note::Letter::ID_INDEX]).to eq(2)
    expect(Note::Letter::C[Note::Letter::BASE_VAL_INDEX]).to eq(0)
    expect(Note::Letter::C[Note::Letter::NAME_INDEX]).to eq('C')
  end
  it 'Evaluates letter D enum correctly' do
    expect(Note::Letter::D[Note::Letter::ID_INDEX]).to eq(3)
    expect(Note::Letter::D[Note::Letter::BASE_VAL_INDEX]).to eq(2)
    expect(Note::Letter::D[Note::Letter::NAME_INDEX]).to eq('D')
  end
  it 'Evaluates letter E enum correctly' do
    expect(Note::Letter::E[Note::Letter::ID_INDEX]).to eq(4)
    expect(Note::Letter::E[Note::Letter::BASE_VAL_INDEX]).to eq(4)
    expect(Note::Letter::E[Note::Letter::NAME_INDEX]).to eq('E')
  end
  it 'Evaluates letter F enum correctly' do
    expect(Note::Letter::F[Note::Letter::ID_INDEX]).to eq(5)
    expect(Note::Letter::F[Note::Letter::BASE_VAL_INDEX]).to eq(5)
    expect(Note::Letter::F[Note::Letter::NAME_INDEX]).to eq('F')
  end
  it 'Evaluates letter G enum correctly' do
    expect(Note::Letter::G[Note::Letter::ID_INDEX]).to eq(6)
    expect(Note::Letter::G[Note::Letter::BASE_VAL_INDEX]).to eq(7)
    expect(Note::Letter::G[Note::Letter::NAME_INDEX]).to eq('G')
  end
end
