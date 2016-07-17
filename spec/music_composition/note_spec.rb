# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicComposition

describe Note::Letter do
  it 'Has correct number of note letters' do
    expect(Note::Letter::NUMBER_OF_LETTERS).to eq 7
    expect(Note::Letter.keys.count).to eq 7
  end

  it 'Has correct letter enums defined as keys' do
    expect(Note::Letter.keys).to eq [:A, :B, :C, :D, :E, :F, :G]
  end

  it 'Has correct letter enums defined as values' do
    expect(Note::Letter.values).to eq [[0, 9, 'A'], [1, 11, 'B'], [2, 0, 'C'], [3, 2, 'D'], [4, 4, 'E'], [5, 5, 'F'], [6, 7, 'G']]
  end

  it 'Parses letter A correctly' do
    expect(Note::Letter.parse('a')).to eq(Note::Letter::A)
    expect(Note::Letter.parse('A')).to eq(Note::Letter::A)
  end
  it 'Parses letter B correctly' do
    expect(Note::Letter.parse('b')).to eq(Note::Letter::B)
    expect(Note::Letter.parse('B')).to eq(Note::Letter::B)
  end
  it 'Parses letter C correctly' do
    expect(Note::Letter.parse('c')).to eq(Note::Letter::C)
    expect(Note::Letter.parse('C')).to eq(Note::Letter::C)
  end
  it 'Parses letter D correctly' do
    expect(Note::Letter.parse('d')).to eq(Note::Letter::D)
    expect(Note::Letter.parse('D')).to eq(Note::Letter::D)
  end
  it 'Parses letter E correctly' do
    expect(Note::Letter.parse('e')).to eq(Note::Letter::E)
    expect(Note::Letter.parse('E')).to eq(Note::Letter::E)
  end
  it 'Parses letter F correctly' do
    expect(Note::Letter.parse('f')).to eq(Note::Letter::F)
    expect(Note::Letter.parse('F')).to eq(Note::Letter::F)
  end
  it 'Parses letter G correctly' do
    expect(Note::Letter.parse('g')).to eq(Note::Letter::G)
    expect(Note::Letter.parse('G')).to eq(Note::Letter::G)
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

describe Note::Quality do
  it 'Has correct quality enums defined as keys' do
    expect(Note::Quality.keys).to eq [:D_FLAT, :FLAT, :NATURAL, :SHARP, :D_SHARP]
  end

  it 'Has correct quality enums defined as values' do
    expect(Note::Quality.values).to eq [[-2, '𝄫'], [-1, '♭'], [0, '♮'], [1, '♯'], [2, '𝄪']]
  end

  it 'Parses quality double flat correctly' do
    expect(Note::Quality.parse('D_FLAT')).to eq(Note::Quality::D_FLAT)
    expect(Note::Quality.parse('d_flat')).to eq(Note::Quality::D_FLAT)
    expect(Note::Quality.parse('D_flat')).to eq(Note::Quality::D_FLAT)
    expect(Note::Quality.parse('d_FLAT')).to eq(Note::Quality::D_FLAT)
    expect(Note::Quality.parse('D_Flat')).to eq(Note::Quality::D_FLAT)
  end
  it 'Parses quality flat correctly' do
    expect(Note::Quality.parse('FLAT')).to eq(Note::Quality::FLAT)
    expect(Note::Quality.parse('flat')).to eq(Note::Quality::FLAT)
    expect(Note::Quality.parse('Flat')).to eq(Note::Quality::FLAT)
    expect(Note::Quality.parse('fLAT')).to eq(Note::Quality::FLAT)
    expect(Note::Quality.parse('FlAt')).to eq(Note::Quality::FLAT)
  end
  it 'Parses quality natural correctly' do
    expect(Note::Quality.parse('NATURAL')).to eq(Note::Quality::NATURAL)
    expect(Note::Quality.parse('natural')).to eq(Note::Quality::NATURAL)
    expect(Note::Quality.parse('Natural')).to eq(Note::Quality::NATURAL)
    expect(Note::Quality.parse('nATURAL')).to eq(Note::Quality::NATURAL)
    expect(Note::Quality.parse('NaTuRaL')).to eq(Note::Quality::NATURAL)
  end
  it 'Parses quality sharp correctly' do
    expect(Note::Quality.parse('SHARP')).to eq(Note::Quality::SHARP)
    expect(Note::Quality.parse('sharp')).to eq(Note::Quality::SHARP)
    expect(Note::Quality.parse('Sharp')).to eq(Note::Quality::SHARP)
    expect(Note::Quality.parse('sHARP')).to eq(Note::Quality::SHARP)
    expect(Note::Quality.parse('ShArP')).to eq(Note::Quality::SHARP)
  end
  it 'Parses quality double sharp correctly' do
    expect(Note::Quality.parse('D_SHARP')).to eq(Note::Quality::D_SHARP)
    expect(Note::Quality.parse('d_sharp')).to eq(Note::Quality::D_SHARP)
    expect(Note::Quality.parse('D_sharp')).to eq(Note::Quality::D_SHARP)
    expect(Note::Quality.parse('d_SHARP')).to eq(Note::Quality::D_SHARP)
    expect(Note::Quality.parse('D_Sharp')).to eq(Note::Quality::D_SHARP)
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
end

describe Note do
  it 'Raises argument error if no arguments are given' do
    expect { Note.new }.to raise_error ArgumentError
  end
  it 'Raises argument error letter given and no other arguments given' do
    expect { Note.new(letter: 'A') }.to raise_error ArgumentError
  end
  it 'Raises argument error quality given and no other arguments given' do
    expect { Note.new(quality: 'SHARP') }.to raise_error ArgumentError
  end
  it 'Raises argument error val given and no other arguments given' do
    expect { Note.new(val: 0) }.to raise_error ArgumentError
  end

  it 'Gives correct note info for all flavors of C using letter and quality' do
    n = Note.new(letter: 'C', quality: 'D_SHARP')
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(2)

    n = Note.new(letter: 'C', quality: 'SHARP')
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(1)

    n = Note.new(letter: 'C', quality: 'NATURAL')
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(0)

    n = Note.new(letter: 'C', quality: 'FLAT')
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(11)

    n = Note.new(letter: 'C', quality: 'D_FLAT')
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(10)
  end

  it 'Gives correct note info for all flavors of D using letter and quality' do
    n = Note.new(letter: 'D', quality: 'D_SHARP')
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(4)

    n = Note.new(letter: 'D', quality: 'SHARP')
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(3)

    n = Note.new(letter: 'D', quality: 'NATURAL')
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(2)

    n = Note.new(letter: 'D', quality: 'FLAT')
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(1)

    n = Note.new(letter: 'D', quality: 'D_FLAT')
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(0)
  end
  it 'Gives correct note info for all flavors of E using letter and quality' do
    n = Note.new(letter: 'E', quality: 'D_SHARP')
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(6)

    n = Note.new(letter: 'E', quality: 'SHARP')
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(5)

    n = Note.new(letter: 'E', quality: 'NATURAL')
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(4)

    n = Note.new(letter: 'E', quality: 'FLAT')
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(3)

    n = Note.new(letter: 'E', quality: 'D_FLAT')
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(2)
  end
  it 'Gives correct note info for all flavors of F using letter and quality' do
    n = Note.new(letter: 'F', quality: 'D_SHARP')
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(7)

    n = Note.new(letter: 'F', quality: 'SHARP')
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(6)

    n = Note.new(letter: 'F', quality: 'NATURAL')
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(5)

    n = Note.new(letter: 'F', quality: 'FLAT')
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(4)

    n = Note.new(letter: 'F', quality: 'D_FLAT')
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(3)
  end
  it 'Gives correct note info for all flavors of G using letter and quality' do
    n = Note.new(letter: 'G', quality: 'D_SHARP')
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(9)

    n = Note.new(letter: 'G', quality: 'SHARP')
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(8)

    n = Note.new(letter: 'G', quality: 'NATURAL')
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(7)

    n = Note.new(letter: 'G', quality: 'FLAT')
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(6)

    n = Note.new(letter: 'G', quality: 'D_FLAT')
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(5)
  end
  it 'Gives correct note info for all flavors of A using letter and quality' do
    n = Note.new(letter: 'A', quality: 'D_SHARP')
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(11)

    n = Note.new(letter: 'A', quality: 'SHARP')
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(10)

    n = Note.new(letter: 'A', quality: 'NATURAL')
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(9)

    n = Note.new(letter: 'A', quality: 'FLAT')
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(8)

    n = Note.new(letter: 'A', quality: 'D_FLAT')
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(7)
  end
  it 'Gives correct note info for all flavors of B using letter and quality' do
    n = Note.new(letter: 'B', quality: 'D_SHARP')
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(1)

    n = Note.new(letter: 'B', quality: 'SHARP')
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(0)

    n = Note.new(letter: 'B', quality: 'NATURAL')
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(11)

    n = Note.new(letter: 'B', quality: 'FLAT')
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(10)

    n = Note.new(letter: 'B', quality: 'D_FLAT')
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(9)
  end

  it 'Raises argument error in set_val if letter not vaild' do
    n = Note.new(letter: 'B', quality: 'D_FLAT')
    n.instance_variable_set(:@letter, nil)
    expect(n.letter).to eq(nil)

    expect { n.send(:set_val, []) }.to raise_error ArgumentError
  end

  it 'Gives correct note info for all flavors of D_SHARP using letter and val' do
    n = Note.new(letter: 'A', val: 11)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(11)

    n = Note.new(letter: 'B', val: 1)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(1)

    n = Note.new(letter: 'C', val: 2)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(2)

    n = Note.new(letter: 'D', val: 4)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(4)

    n = Note.new(letter: 'E', val: 6)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(6)

    n = Note.new(letter: 'F', val: 7)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(7)

    n = Note.new(letter: 'G', val: 9)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(9)
  end

  it 'Gives correct note info for all flavors of SHARP using letter and val' do
    n = Note.new(letter: 'A', val: 10)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(10)

    n = Note.new(letter: 'B', val: 0)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(0)

    n = Note.new(letter: 'C', val: 1)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(1)

    n = Note.new(letter: 'D', val: 3)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(3)

    n = Note.new(letter: 'E', val: 5)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(5)

    n = Note.new(letter: 'F', val: 6)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(6)

    n = Note.new(letter: 'G', val: 8)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(8)
  end

  it 'Gives correct note info for all flavors of NATURAL using letter and val' do
    n = Note.new(letter: 'A', val: 9)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(9)

    n = Note.new(letter: 'B', val: 11)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(11)

    n = Note.new(letter: 'C', val: 0)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(0)

    n = Note.new(letter: 'D', val: 2)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(2)

    n = Note.new(letter: 'E', val: 4)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(4)

    n = Note.new(letter: 'F', val: 5)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(5)

    n = Note.new(letter: 'G', val: 7)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(7)
  end

  it 'Gives correct note info for all flavors of FLAT using letter and val' do
    n = Note.new(letter: 'A', val: 8)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(8)

    n = Note.new(letter: 'B', val: 10)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(10)

    n = Note.new(letter: 'C', val: 11)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(11)

    n = Note.new(letter: 'D', val: 1)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(1)

    n = Note.new(letter: 'E', val: 3)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(3)

    n = Note.new(letter: 'F', val: 4)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(4)

    n = Note.new(letter: 'G', val: 6)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(6)
  end

  it 'Gives correct note info for all flavors of D_FLAT using letter and val' do
    n = Note.new(letter: 'A', val: 7)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(7)

    n = Note.new(letter: 'B', val: 9)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(9)

    n = Note.new(letter: 'C', val: 10)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(10)

    n = Note.new(letter: 'D', val: 0)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(0)

    n = Note.new(letter: 'E', val: 2)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(2)

    n = Note.new(letter: 'F', val: 3)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(3)

    n = Note.new(letter: 'G', val: 5)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(5)
  end

  it 'Gives correct note info for all flavors of C using quality and val' do
    n = Note.new(quality: 'D_SHARP', val: 2)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(2)

    n = Note.new(quality: 'SHARP', val: 1)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(1)

    n = Note.new(quality: 'NATURAL', val: 0)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(0)

    n = Note.new(quality: 'FLAT', val: 11)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(11)

    n = Note.new(quality: 'D_FLAT', val: 10)
    expect(n.letter).to eq(Note::Letter::C)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(10)
  end

  it 'Gives correct note info for all flavors of D using quality and val' do
    n = Note.new(quality: 'D_SHARP', val: 4)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(4)

    n = Note.new(quality: 'SHARP', val: 3)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(3)

    n = Note.new(quality: 'NATURAL', val: 2)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(2)

    n = Note.new(quality: 'FLAT', val: 1)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(1)

    n = Note.new(quality: 'D_FLAT', val: 0)
    expect(n.letter).to eq(Note::Letter::D)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(0)
  end

  it 'Gives correct note info for all flavors of E using quality and val' do
    n = Note.new(quality: 'D_SHARP', val: 6)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(6)

    n = Note.new(quality: 'SHARP', val: 5)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(5)

    n = Note.new(quality: 'NATURAL', val: 4)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(4)

    n = Note.new(quality: 'FLAT', val: 3)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(3)

    n = Note.new(quality: 'D_FLAT', val: 2)
    expect(n.letter).to eq(Note::Letter::E)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(2)
  end

  it 'Gives correct note info for all flavors of F using quality and val' do
    n = Note.new(quality: 'D_SHARP', val: 7)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(7)

    n = Note.new(quality: 'SHARP', val: 6)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(6)

    n = Note.new(quality: 'NATURAL', val: 5)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(5)

    n = Note.new(quality: 'FLAT', val: 4)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(4)

    n = Note.new(quality: 'D_FLAT', val: 3)
    expect(n.letter).to eq(Note::Letter::F)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(3)
  end

  it 'Gives correct note info for all flavors of G using quality and val' do
    n = Note.new(quality: 'D_SHARP', val: 9)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(9)

    n = Note.new(quality: 'SHARP', val: 8)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(8)

    n = Note.new(quality: 'NATURAL', val: 7)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(7)

    n = Note.new(quality: 'FLAT', val: 6)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(6)

    n = Note.new(quality: 'D_FLAT', val: 5)
    expect(n.letter).to eq(Note::Letter::G)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(5)
  end

  it 'Gives correct note info for all flavors of A using quality and val' do
    n = Note.new(quality: 'D_SHARP', val: 11)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(11)

    n = Note.new(quality: 'SHARP', val: 10)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(10)

    n = Note.new(quality: 'NATURAL', val: 9)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(9)

    n = Note.new(quality: 'FLAT', val: 8)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(8)

    n = Note.new(quality: 'D_FLAT', val: 7)
    expect(n.letter).to eq(Note::Letter::A)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(7)
  end

  it 'Gives correct note info for all flavors of B using quality and val' do
    n = Note.new(quality: 'D_SHARP', val: 1)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::D_SHARP)
    expect(n.val).to eq(1)

    n = Note.new(quality: 'SHARP', val: 0)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::SHARP)
    expect(n.val).to eq(0)

    n = Note.new(quality: 'NATURAL', val: 11)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::NATURAL)
    expect(n.val).to eq(11)

    n = Note.new(quality: 'FLAT', val: 10)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::FLAT)
    expect(n.val).to eq(10)

    n = Note.new(quality: 'D_FLAT', val: 9)
    expect(n.letter).to eq(Note::Letter::B)
    expect(n.quality).to eq(Note::Quality::D_FLAT)
    expect(n.val).to eq(9)
  end
end
