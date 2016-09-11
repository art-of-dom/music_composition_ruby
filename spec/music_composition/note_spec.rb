# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicComposition

QUALITY_ARRAY = %w(D_SHARP SHARP NATURAL FLAT D_FLAT).freeze
C_VAL_ARRAY = [2, 1, 0, 11, 10].freeze
D_VAL_ARRAY = [4, 3, 2, 1, 0].freeze
E_VAL_ARRAY = [6, 5, 4, 3, 2].freeze
F_VAL_ARRAY = [7, 6, 5, 4, 3].freeze
G_VAL_ARRAY = [9, 8, 7, 6, 5].freeze
A_VAL_ARRAY = [11, 10, 9, 8, 7].freeze
B_VAL_ARRAY = [1, 0, 11, 10, 9].freeze

LETTER_ARRAY = %w(A B C D E F G).freeze
D_SHARP_VALS = [11, 1, 2, 4, 6, 7, 9].freeze
SHARP_VALS =   [10, 0, 1, 3, 5, 6, 8].freeze
NATURAL_VALS = [9, 11, 0, 2, 4, 5, 7].freeze
FLAT_VALS =    [8, 10, 11, 1, 3, 4, 6].freeze
D_FLAT_VALS = [7, 9, 10, 0, 2, 3, 5].freeze

describe Note do
  it 'Raises argument error if no arguments are given' do
    expect { described_class.new }.to raise_error ArgumentError
  end
  it 'Raises argument error letter given and no other arguments given' do
    expect { described_class.new(letter: 'A') }.to raise_error ArgumentError
  end
  it 'Raises argument error quality given and no other arguments given' do
    expect { described_class.new(quality: 'SHARP') }.to raise_error ArgumentError
  end
  it 'Raises argument error val given and no other arguments given' do
    expect { described_class.new(val: 0) }.to raise_error ArgumentError
  end

  it 'Gives correct note info for all flavors of C using letter and quality' do
    QUALITY_ARRAY.zip(C_VAL_ARRAY).each do |qual, val|
      n = described_class.new(letter: 'C', quality: qual)
      expect(n.letter).to eq(Note::Letter::C)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of D using letter and quality' do
    QUALITY_ARRAY.zip(D_VAL_ARRAY).each do |qual, val|
      n = described_class.new(letter: 'D', quality: qual)
      expect(n.letter).to eq(Note::Letter::D)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of E using letter and quality' do
    QUALITY_ARRAY.zip(E_VAL_ARRAY).each do |qual, val|
      n = described_class.new(letter: 'E', quality: qual)
      expect(n.letter).to eq(Note::Letter::E)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of F using letter and quality' do
    QUALITY_ARRAY.zip(F_VAL_ARRAY).each do |qual, val|
      n = described_class.new(letter: 'F', quality: qual)
      expect(n.letter).to eq(Note::Letter::F)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of G using letter and quality' do
    QUALITY_ARRAY.zip(G_VAL_ARRAY).each do |qual, val|
      n = described_class.new(letter: 'G', quality: qual)
      expect(n.letter).to eq(Note::Letter::G)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of A using letter and quality' do
    QUALITY_ARRAY.zip(A_VAL_ARRAY).each do |qual, val|
      n = described_class.new(letter: 'A', quality: qual)
      expect(n.letter).to eq(Note::Letter::A)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of B using letter and quality' do
    QUALITY_ARRAY.zip(B_VAL_ARRAY).each do |qual, val|
      n = described_class.new(letter: 'B', quality: qual)
      expect(n.letter).to eq(Note::Letter::B)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Raises argument error in set_val if letter not vaild' do
    n = described_class.new(letter: 'B', quality: 'D_FLAT')
    n.instance_variable_set(:@letter, nil)
    expect(n.letter).to eq(nil)

    expect { n.send(:set_val, []) }.to raise_error ArgumentError
  end

  it 'Gives correct note info for all flavors of D_SHARP using letter and val' do
    LETTER_ARRAY.zip(D_SHARP_VALS).each do |let, val|
      n = described_class.new(letter: let, val: val)
      expect(n.letter).to eq(Note::Letter.parse(let))
      expect(n.quality).to eq(Note::Quality::D_SHARP)
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of SHARP using letter and val' do
    LETTER_ARRAY.zip(SHARP_VALS).each do |let, val|
      n = described_class.new(letter: let, val: val)
      expect(n.letter).to eq(Note::Letter.parse(let))
      expect(n.quality).to eq(Note::Quality::SHARP)
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of NATURAL using letter and val' do
    LETTER_ARRAY.zip(NATURAL_VALS).each do |let, val|
      n = described_class.new(letter: let, val: val)
      expect(n.letter).to eq(Note::Letter.parse(let))
      expect(n.quality).to eq(Note::Quality::NATURAL)
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of FLAT using letter and val' do
    LETTER_ARRAY.zip(FLAT_VALS).each do |let, val|
      n = described_class.new(letter: let, val: val)
      expect(n.letter).to eq(Note::Letter.parse(let))
      expect(n.quality).to eq(Note::Quality::FLAT)
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of D_FLAT using letter and val' do
    LETTER_ARRAY.zip(D_FLAT_VALS).each do |let, val|
      n = described_class.new(letter: let, val: val)
      expect(n.letter).to eq(Note::Letter.parse(let))
      expect(n.quality).to eq(Note::Quality::D_FLAT)
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of C using quality and val' do
    QUALITY_ARRAY.zip(C_VAL_ARRAY).each do |qual, val|
      n = described_class.new(quality: qual, val: val)
      expect(n.letter).to eq(Note::Letter::C)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of D using quality and val' do
    QUALITY_ARRAY.zip(D_VAL_ARRAY).each do |qual, val|
      n = described_class.new(quality: qual, val: val)
      expect(n.letter).to eq(Note::Letter::D)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of E using quality and val' do
    QUALITY_ARRAY.zip(E_VAL_ARRAY).each do |qual, val|
      n = described_class.new(quality: qual, val: val)
      expect(n.letter).to eq(Note::Letter::E)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of F using quality and val' do
    QUALITY_ARRAY.zip(F_VAL_ARRAY).each do |qual, val|
      n = described_class.new(quality: qual, val: val)
      expect(n.letter).to eq(Note::Letter::F)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of G using quality and val' do
    QUALITY_ARRAY.zip(G_VAL_ARRAY).each do |qual, val|
      n = described_class.new(quality: qual, val: val)
      expect(n.letter).to eq(Note::Letter::G)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of A using quality and val' do
    QUALITY_ARRAY.zip(A_VAL_ARRAY).each do |qual, val|
      n = described_class.new(quality: qual, val: val)
      expect(n.letter).to eq(Note::Letter::A)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end

  it 'Gives correct note info for all flavors of B using quality and val' do
    QUALITY_ARRAY.zip(B_VAL_ARRAY).each do |qual, val|
      n = described_class.new(quality: qual, val: val)
      expect(n.letter).to eq(Note::Letter::B)
      expect(n.quality).to eq(Note::Quality.parse(qual))
      expect(n.val).to eq(val)
    end
  end
end
