# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicComposition

describe 'Interval Fifth' do
  it 'Calculates a doublely diminished fifth (dd5) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a doublely diminished fifth (dd5) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_SHARP')

    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(5)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates a diminished fifth (d5) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a diminished fifth (d5) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'SHARP')

    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(6)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates a Perfect fifth (P4) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a Perfect fifth (P4) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(7)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates a Augmented fifth (A4) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a Augmented fifth (A4) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(8)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates a doublely Augmented fifth (AA4) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'FLAT')
    n2 = Note.new(letter: 'F', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a doublely Augmented fifth (AA4) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'SHARP')
    n2 = Note.new(letter: 'B', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(4)
    expect(interval.val_distance).to eq(9)
    expect(interval.direction).to eq(Interval::DOWN)
  end
end
