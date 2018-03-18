# frozen_string_literal: true

module Utils
  # helper module containing common useful
  # methods for arrays
  module ArrayHelper
    # checks input and creates a new array that is
    # either empty or contains input
    def null_check_init(input)
      return Array.new(input) if input
      []
    end
  end
end
