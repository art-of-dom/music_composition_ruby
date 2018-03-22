# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Duration do
  it 'Creates a 256th duration' do
    dur = described_class.new(val: 'TWO_HUNDRED_FIFTY_SIXTH')
    expect(dur.base_val).to eq Duration::Value::TWO_HUNDRED_FIFTY_SIXTH
    expect(dur.val).to eq Duration::Value::TWO_HUNDRED_FIFTY_SIXTH
  end

  it 'Creates a 128th note' do
    dur = described_class.new(val: 'ONE_HUNDRED_TWENTY_EIGHTH')
    expect(dur.base_val).to eq Duration::Value::ONE_HUNDRED_TWENTY_EIGHTH
    expect(dur.val).to eq Duration::Value::ONE_HUNDRED_TWENTY_EIGHTH
  end

  it 'Creates a 64th note' do
    dur = described_class.new(val: 'SIXTY_FOURTH')
    expect(dur.base_val).to eq Duration::Value::SIXTY_FOURTH
    expect(dur.val).to eq Duration::Value::SIXTY_FOURTH
  end

  it 'Creates a 32nd note' do
    dur = described_class.new(val: 'THIRTY_SECOND')
    expect(dur.base_val).to eq Duration::Value::THIRTY_SECOND
    expect(dur.val).to eq Duration::Value::THIRTY_SECOND
  end

  it 'Creates a 16th note' do
    dur = described_class.new(val: 'SIXTEENTH')
    expect(dur.base_val).to eq Duration::Value::SIXTEENTH
    expect(dur.val).to eq Duration::Value::SIXTEENTH
  end

  it 'Creates a 8th note' do
    dur = described_class.new(val: 'EIGHTH')
    expect(dur.base_val).to eq Duration::Value::EIGHTH
    expect(dur.val).to eq Duration::Value::EIGHTH
  end

  it 'Creates a quater note' do
    dur = described_class.new(val: 'QUARTER')
    expect(dur.base_val).to eq Duration::Value::QUARTER
    expect(dur.val).to eq Duration::Value::QUARTER
  end

  it 'Creates a quater rest' do
    dur = described_class.new(val: 'QUARTER')
    expect(dur.base_val).to eq Duration::Value::QUARTER
    expect(dur.val).to eq Duration::Value::QUARTER
  end

  it 'Creates a half note' do
    dur = described_class.new(val: 'HALF')
    expect(dur.base_val).to eq Duration::Value::HALF
    expect(dur.val).to eq Duration::Value::HALF
  end

  it 'Creates a whole note' do
    dur = described_class.new(val: 'WHOLE')
    expect(dur.base_val).to eq Duration::Value::WHOLE
    expect(dur.val).to eq Duration::Value::WHOLE
  end

  it 'Creates a double whole note' do
    dur = described_class.new(val: 'DOUBLE_WHOLE')
    expect(dur.base_val).to eq Duration::Value::DOUBLE_WHOLE
    expect(dur.val).to eq Duration::Value::DOUBLE_WHOLE
  end
end
