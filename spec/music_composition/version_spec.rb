# frozen_string_literal: true

require 'spec_helper'

describe MusicComposition::VERSION do
  it 'has a version number' do
    expect(MusicComposition::VERSION).not_to be_nil
  end
end
