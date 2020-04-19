# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Voice do
  describe '#add_note' do
    it 'adds note to start of the first measure' do
      mes = [Measure.new, Measure.new, Measure.new]
      voice = described_class.new(mes)
      voice.add_note(NOTE_C_NATURAL.dup, DUR_QUARTER.dup, mes: 0, beat: 0)
      expect(voice.measure[0].durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(voice.measure[0].notes[0]).to eq NOTE_C_NATURAL.dup
      expect(voice.measure[0].excess_notes).to eq [nil]
      expect(voice.measure[0].excess_durs).to eq [DUR_QUARTER.dup]
    end

    it 'adds note to end of the first measure' do
      mes = [Measure.new, Measure.new, Measure.new]
      voice = described_class.new(mes)
      voice.add_note(NOTE_C_NATURAL.dup, DUR_QUARTER.dup, mes: 0, beat: Duration::Value::QUARTER * 3)
      expect(voice.measure[0].durs.map(&:val).reduce(0, :+)).to eq Duration::Value::QUARTER * 4
      expect(voice.measure[0].notes[1]).to eq NOTE_C_NATURAL.dup
    end
  end
end
