# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Duration::Type do
  it 'Has correct type enums defined as keys' do
    expect(described_class.keys).to eq %i[REST NOTE]
  end

  it 'Has correct type enums defined as values' do
    expect(described_class.values).to eq [0, 1]
  end
end
