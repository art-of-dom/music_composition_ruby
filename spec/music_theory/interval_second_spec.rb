# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicTheory

describe 'Interval Second' do
  it 'Calculates a diminished second (d2) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a diminished Second (d2) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'D_SHARP')

    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::DIMINISHED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates a minor second (m2) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a minor Second (m2) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MINOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates a major second (M2) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a Major Second (M2) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'NATURAL')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::MAJOR)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates a Augmented second (A2) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a Augmented Second (A2) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(3)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates a doublely Augmented second (AA2) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'FLAT')
    n2 = Note.new(letter: 'F', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'FLAT')
    n2 = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates a doublely Augmented Second (AA2) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'SHARP')
    n2 = Note.new(letter: 'B', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'SHARP')
    n2 = Note.new(letter: 'E', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(1)
    expect(interval.val_distance).to eq(4)
    expect(interval.direction).to eq(Interval::DOWN)
  end
end
