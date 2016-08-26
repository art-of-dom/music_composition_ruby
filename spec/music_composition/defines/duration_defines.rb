# encoding: utf-8
# frozen_string_literal: true

require 'spec_helper'
include MusicComposition

# Constant for a quarter note duration to use during testing.
DUR_QUARTER_NOTE = Duration.new(type: 'note', val: 'QUARTER')
# Constant for a quarter rest duration to use during testing.
DUR_QUARTER_REST = Duration.new(type: 'rest', val: 'QUARTER')

# Constant for a half note duration to use during testing.
DUR_HALF_NOTE = Duration.new(type: 'note', val: 'HALF')
# Constant for a half rest duration to use during testing.
DUR_HALF_REST = Duration.new(type: 'rest', val: 'HALF')

# Constant for a whole note duration to use during testing.
DUR_WHOLE_NOTE = Duration.new(type: 'note', val: 'WHOLE')
# Constant for a whole rest duration to use during testing.
DUR_WHOLE_REST = Duration.new(type: 'rest', val: 'WHOLE')

# Constant for a double whole note duration to use during testing.
DUR_DOUBLE_WHOLE_NOTE = Duration.new(type: 'note', val: 'DOUBLE_WHOLE')
# Constant for a double whole rest duration to use during testing.
DUR_DOUBLE_WHOLE_REST = Duration.new(type: 'rest', val: 'DOUBLE_WHOLE')
