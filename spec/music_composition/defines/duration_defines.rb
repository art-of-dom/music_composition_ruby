# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

# Constant for a quarter note duration to use during testing.
DUR_QUARTER = Duration.new(val: 'QUARTER')

# Constant for a half note duration to use during testing.
DUR_HALF = Duration.new(val: 'HALF')

# Constant for a whole note duration to use during testing.
DUR_WHOLE = Duration.new(val: 'WHOLE')

# Constant for a double whole note duration to use during testing.
DUR_DOUBLE_WHOLE = Duration.new(val: 'DOUBLE_WHOLE')
