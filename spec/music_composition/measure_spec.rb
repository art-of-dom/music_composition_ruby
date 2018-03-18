# frozen_string_literal: true

require 'spec_helper'
require 'music_composition/defines/note_defines'
require 'music_composition/defines/duration_defines'
include MusicComposition

describe Measure do
  it 'Creates a null measure of fixed type defaultly' do
    measure = described_class.new
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs[0].val).to eq Duration::Value::QUARTER * 4
    expect(measure.notes).to eq [nil]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
  end

  it 'Fills measure in fixed type if total duration is not full measure' do
    a_note = NOTE_A_NATURAL.dup
    q_note_dur = DUR_QUARTER_NOTE.dup
    measure = described_class.new(durs: [q_note_dur], notes: [a_note])
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs[0]).to eq q_note_dur
    expect(measure.durs[1].val).to eq Duration::Value::QUARTER * 3
    expect(measure.notes).to eq [a_note, nil]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
  end

  it 'Fixes last durationin fixed type if last duration causes an overflow' do
    a_note = NOTE_A_NATURAL.dup
    b_note = NOTE_B_NATURAL.dup
    q_note_dur = DUR_QUARTER_NOTE.dup
    w_note_dur = DUR_WHOLE_NOTE.dup
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
    a_note = NOTE_A_NATURAL.dup
    b_note = NOTE_B_NATURAL.dup
    c_note = NOTE_C_NATURAL.dup
    d_note = NOTE_D_NATURAL.dup
    q_note_dur = DUR_QUARTER_NOTE.dup
    h_note_dur = DUR_HALF_NOTE.dup
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
    a_note = NOTE_A_NATURAL.dup
    b_note = NOTE_B_NATURAL.dup
    c_note = NOTE_C_NATURAL.dup
    q_note_dur = DUR_QUARTER_NOTE.dup
    w_note_dur = DUR_WHOLE_NOTE.dup
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
    a_note = NOTE_A_NATURAL.dup
    w_note_dur = DUR_WHOLE_NOTE.dup
    measure = described_class.new(durs: [w_note_dur], notes: [a_note])
    expect(measure.type).to eq Measure::Type::FIXED
    expect(measure.length).to eq Duration::Value::QUARTER * 4
    expect(measure.durs).to eq [w_note_dur]
    expect(measure.notes).to eq [a_note]
    expect(measure.durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
  end
end
