# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

describe Duration::Value do
  it 'Has correct value enums defined as keys' do
    expect(described_class.keys).to eq %i[TWO_HUNDRED_FIFTY_SIXTH ONE_HUNDRED_TWENTY_EIGHTH SIXTY_FOURTH
                                          THIRTY_SECOND SIXTEENTH EIGHTH QUARTER HALF WHOLE DOUBLE_WHOLE]
  end

  it 'Has correct value enums defined as values' do
    expect(described_class.values).to eq [6, 12, 24, 48, 96, 192,
                                          384, 768, 1536, 3072]
  end
end
