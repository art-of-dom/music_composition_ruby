# encoding: utf-8
# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Measure::Type do
  it 'Has correct type enums defined as keys' do
    expect(described_class.keys).to eq %i[FIXED VARIABLE UNDEFINED]
  end

  it 'Has correct type enums defined as values' do
    expect(described_class.values).to eq [0, 1, 2]
  end
end
