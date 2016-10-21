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

  describe '#name' do
    it 'returns correct name for double flat notes' do
      LETTER_ARRAY.each do |letter|
        note = described_class.new(letter: letter, quality: 'D_FLAT')
        expect(note.name).to eq(String.new(letter).concat('𝄫'))
      end
    end

    it 'returns correct name for flat notes' do
      LETTER_ARRAY.each do |letter|
        note = described_class.new(letter: letter, quality: 'FLAT')
        expect(note.name).to eq(String.new(letter).concat('♭'))
      end
    end

    it 'returns correct name for natural notes' do
      LETTER_ARRAY.each do |letter|
        note = described_class.new(letter: letter, quality: 'NATURAL')
        expect(note.name).to eq(letter)
      end
    end

    it 'returns correct name for sharp notes' do
      LETTER_ARRAY.each do |letter|
        note = described_class.new(letter: letter, quality: 'SHARP')
        expect(note.name).to eq(String.new(letter).concat('♯'))
      end
    end

    it 'returns correct name for double sharp notes' do
      LETTER_ARRAY.each do |letter|
        note = described_class.new(letter: letter, quality: 'D_SHARP')
        expect(note.name).to eq(String.new(letter).concat('𝄪'))
      end
    end

    it 'returns correct name for double flat notes with octave' do
      -5.upto(10) do |i|
        LETTER_ARRAY.each do |letter|
          note = described_class.new(letter: letter, quality: 'D_FLAT')
          note.octave = i
          expect(note.name).to eq(String.new(letter).concat('𝄫').concat(i.to_s))
        end
      end
    end

    it 'returns correct name for flat notes with octave' do
      -5.upto(10) do |i|
        LETTER_ARRAY.each do |letter|
          note = described_class.new(letter: letter, quality: 'FLAT')
          note.octave = i
          expect(note.name).to eq(String.new(letter).concat('♭').concat(i.to_s))
        end
      end
    end

    it 'returns correct name for natural notes' do
      -5.upto(10) do |i|
        LETTER_ARRAY.each do |letter|
          note = described_class.new(letter: letter, quality: 'NATURAL')
          note.octave = i
          expect(note.name).to eq(String.new(letter).concat(i.to_s))
        end
      end
    end

    it 'returns correct name for sharp notes with octave' do
      -5.upto(10) do |i|
        LETTER_ARRAY.each do |letter|
          note = described_class.new(letter: letter, quality: 'SHARP')
          note.octave = i
          expect(note.name).to eq(String.new(letter).concat('♯').concat(i.to_s))
        end
      end
    end

    it 'returns correct name for double sharp notes with octave' do
      -5.upto(10) do |i|
        LETTER_ARRAY.each do |letter|
          note = described_class.new(letter: letter, quality: 'D_SHARP')
          note.octave = i
          expect(note.name).to eq(String.new(letter).concat('𝄪').concat(i.to_s))
        end
      end
    end
  end

  describe '#letter_id' do
    note = described_class.new(letter: 'A', quality: 'NATURAL')
    it 'gives correct letter ID' do
      expect(note.letter_id).to eq(0)
    end
  end

  describe '#letter_name' do
    note = described_class.new(letter: 'A', quality: 'NATURAL')
    it 'gives correct letter name' do
      expect(note.letter_name).to eq('A')
    end
  end

  describe '#letter_val' do
    note = described_class.new(letter: 'A', quality: 'NATURAL')
    it 'gives correct letter value' do
      expect(note.letter_val).to eq(9)
    end
  end

  describe '#note_equal?' do
    it 'returns true for equal notes' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(val: 10, quality: 'SHARP')
      expect(n1.note_equal?(n2)).to be true
      expect(n2.note_equal?(n1)).to be true
    end

    it 'returns false for notes that are not equal' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(val: 10, quality: 'FLAT')
      expect(n1.note_equal?(n2)).to be false
      expect(n2.note_equal?(n1)).to be false
    end
  end

  describe '#note_equivalent?' do
    it 'returns true for equivalent notes' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(val: 10, quality: 'FLAT')
      expect(n1.note_equivalent?(n2)).to be true
      expect(n2.note_equivalent?(n1)).to be true
    end

    it 'returns false for notes that are not equivalent' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(val: 8, quality: 'FLAT')
      expect(n1.note_equal?(n2)).to be false
      expect(n2.note_equal?(n1)).to be false
    end
  end

  describe '#transform_to_equivalent' do
    it 'keeps the note the same if input is 0' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(letter: 'A', quality: 'SHARP')
      n1.transform_to_equivalent(0)
      expect(n1.note_equal?(n2)).to be true
    end

    it 'turns note into an enharmonic equivalent one letter above' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(letter: 'B', quality: 'FLAT')
      n1.transform_to_equivalent(1)
      expect(n1.note_equal?(n2)).to be true
    end

    it 'turns note into an enharmonic equivalent one letter below' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(letter: 'B', quality: 'FLAT')
      n2.transform_to_equivalent(-1)
      expect(n2.note_equal?(n1)).to be true
    end

    it 'turns note into an enharmonic equivalent two letters above' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(letter: 'C', quality: 'D_FLAT')
      n1.transform_to_equivalent(2)
      expect(n1.note_equal?(n2)).to be true
    end

    it 'turns note into an enharmonic equivalent two letters below' do
      n1 = described_class.new(letter: 'A', quality: 'SHARP')
      n2 = described_class.new(letter: 'C', quality: 'D_FLAT')
      n2.transform_to_equivalent(-2)
      expect(n2.note_equal?(n1)).to be true
    end
  end
end
