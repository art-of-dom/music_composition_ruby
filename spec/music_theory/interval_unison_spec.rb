# encoding: utf-8
# frozen_string_literal: true
require 'spec_helper'
include MusicTheory

describe 'Interval Unison' do
  it 'Calculates Perfect Unison (P1) up correctly' do
    n = Note.new(letter: 'C', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n = Note.new(letter: 'D', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n = Note.new(letter: 'E', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n = Note.new(letter: 'F', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n = Note.new(letter: 'G', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n = Note.new(letter: 'A', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)

    n = Note.new(letter: 'B', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates Perfect Unison (P1) down correctly' do
    n = Note.new(letter: 'C', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n = Note.new(letter: 'D', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n = Note.new(letter: 'E', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n = Note.new(letter: 'F', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n = Note.new(letter: 'G', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n = Note.new(letter: 'A', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)

    n = Note.new(letter: 'B', quality: 'NATURAL')
    interval = Interval.new(n1: n, n2: n, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::PERFECT)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(0)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates Augmented Unison (A1) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates Augmented Unison (A1) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(1)
    expect(interval.direction).to eq(Interval::DOWN)
  end

  it 'Calculates doublely Augmented Unison (AA1) up correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::UP)
  end

  it 'Calculates doublely Augmented Unison (AA1) down correctly' do
    n1 = Note.new(letter: 'C', quality: 'NATURAL')
    n2 = Note.new(letter: 'C', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'D', quality: 'NATURAL')
    n2 = Note.new(letter: 'D', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'E', quality: 'NATURAL')
    n2 = Note.new(letter: 'E', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'F', quality: 'NATURAL')
    n2 = Note.new(letter: 'F', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'G', quality: 'NATURAL')
    n2 = Note.new(letter: 'G', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'A', quality: 'NATURAL')
    n2 = Note.new(letter: 'A', quality: 'D_FLAT')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)

    n1 = Note.new(letter: 'B', quality: 'NATURAL')
    n2 = Note.new(letter: 'B', quality: 'D_SHARP')
    interval = Interval.new(n1: n1, n2: n2, direction: Interval::DOWN)

    expect(interval.quality).to eq(Interval::Quality::D_AUGMENTED)
    expect(interval.letter_distance).to eq(0)
    expect(interval.val_distance).to eq(2)
    expect(interval.direction).to eq(Interval::DOWN)
  end
end
