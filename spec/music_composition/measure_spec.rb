# frozen_string_literal: true

require 'spec_helper'
require 'music_composition/defines/note_defines'
require 'music_composition/defines/duration_defines'
include MusicComposition

describe Measure do
  let(:a_note) { NOTE_A_NATURAL.dup }
  let(:b_note) { NOTE_B_NATURAL.dup }
  let(:c_note) { NOTE_C_NATURAL.dup }
  let(:d_note) { NOTE_D_NATURAL.dup }
  let(:e_note) { NOTE_E_NATURAL.dup }
  let(:q_note_dur) { DUR_QUARTER_NOTE.dup }
  let(:h_note_dur) { DUR_HALF_NOTE.dup }
  let(:w_note_dur) { DUR_WHOLE_NOTE.dup }
  
  let(:example_measure) { described_class.new(durs: Array.new(4, q_note_dur), notes: [a_note, b_note, c_note, d_note]) }

  it 'Creates a null measure of fixed type defaultly' do
    measure = described_class.new
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs[0].val).to eq Duration::Value::QUARTER * 4
    expect(measure.notes).to eq [nil]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
  end

  it 'Fills measure in fixed type if total duration is not full measure' do
    measure = described_class.new(durs: [q_note_dur], notes: [a_note])
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs[0]).to eq q_note_dur
    expect(measure.durs[1].val).to eq Duration::Value::QUARTER * 3
    expect(measure.notes).to eq [a_note, nil]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
  end

  it 'Fixes last durationin fixed type if last duration causes an overflow' do
    measure = described_class.new(durs: [q_note_dur, w_note_dur], notes: [a_note, b_note])
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs[0]).to eq q_note_dur
    expect(measure.durs[1].val).to eq Duration::Value::QUARTER * 3
    expect(measure.notes).to eq [a_note, b_note]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
    expect(measure.excess_notes).to eq [b_note]
    expect(measure.excess_durs[0].val).to eq Duration::Value::QUARTER
  end

  it 'Removes extra notes and trims duration on boundry in fixed type if total duration overflows even values' do
    measure = described_class.new(durs: [h_note_dur, h_note_dur, q_note_dur, q_note_dur], notes: [a_note, b_note, c_note, d_note])
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs).to eq [h_note_dur, h_note_dur]
    expect(measure.notes).to eq [a_note, b_note]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
    expect(measure.excess_notes).to eq [c_note, d_note]
    expect(measure.excess_durs).to eq [q_note_dur, q_note_dur]
  end

  it 'Removes extra notes and trims duration on boundry in fixed type if total duration overflows uneven values' do
    measure = described_class.new(durs: [q_note_dur, w_note_dur, q_note_dur], notes: [a_note, b_note, c_note])
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs[0]).to eq q_note_dur
    expect(measure.durs[1].val).to eq Duration::Value::QUARTER * 3
    expect(measure.notes).to eq [a_note, b_note]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
    expect(measure.excess_notes).to eq [b_note, c_note]
    expect(measure.excess_durs[1]).to eq q_note_dur
    expect(measure.excess_durs[0].val).to eq Duration::Value::QUARTER
  end

  it 'Given a full measure just passes the values in a fixed measure' do
    measure = described_class.new(durs: [w_note_dur], notes: [a_note])
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs).to eq [w_note_dur]
    expect(measure.notes).to eq [a_note]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
  end

  describe '#remove_note' do
    it 'Raises argument error if negative count given' do
      expect { example_measure.remove_note(-1) }.to raise_error ArgumentError
    end

    it 'Raises argument error if count bigger than measure' do
      expect { example_measure.remove_note(Duration::Value::WHOLE * 2) }.to raise_error ArgumentError
    end

    it 'removes first note' do
      example_measure.remove_note(0)
      expect(example_measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(example_measure.notes).to eq [b_note, c_note, d_note, nil]
    end

    it 'removes middle note' do
      example_measure.remove_note(Duration::Value::QUARTER)
      expect(example_measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(example_measure.notes).to eq [a_note, c_note, d_note, nil]
    end

    it 'removes part of a note' do
      example_measure.remove_note(Duration::Value::EIGHTH)
      expect(example_measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(example_measure.notes).to eq [a_note, nil, b_note, c_note, d_note]
    end

    it 'removes last note' do
      example_measure.remove_note(Duration::Value::QUARTER * 3)
      expect(example_measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(example_measure.notes).to eq [a_note, b_note, c_note, nil]
    end
  end

  describe '#insert_note' do
    it 'Raises argument error if negative count given' do
      expect { example_measure.insert_note(-1, e_note, q_note_dur) }.to raise_error ArgumentError
    end

    it 'Raises argument error if over length count given' do
      expect { example_measure.insert_note(Duration::Value::WHOLE * 2, e_note, q_note_dur) }.to raise_error ArgumentError
    end

    it 'inserts first note' do
      example_measure.insert_note(0, e_note, q_note_dur)
      expect(example_measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(example_measure.notes).to eq [e_note, a_note, b_note, c_note]
    end

    it 'inserts middle note' do
      example_measure.insert_note(Duration::Value::QUARTER, e_note, q_note_dur)
      expect(example_measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(example_measure.notes).to eq [a_note, e_note, b_note, c_note]
    end

    it 'inserts part of a note' do
      example_measure.insert_note(Duration::Value::EIGHTH, e_note, q_note_dur)
      expect(example_measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(example_measure.notes).to eq [a_note, e_note, b_note, c_note, d_note]
    end

    it 'inserts last note' do
      example_measure.insert_note(Duration::Value::QUARTER * 3, e_note, q_note_dur)
      expect(example_measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(example_measure.notes).to eq [a_note, b_note, c_note, e_note]
    end
  end
end
