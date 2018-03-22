# frozen_string_literal: true

require 'ruby-enum'

##
# The basic representation of the length of a sound.
module MusicComposition
  ##
  # The basic representation of the length of a sound.
  class Duration
    ##
    # The type of duration
    class Type
      include Ruby::Enum
      define :REST, 0
      define :NOTE, 1
    end
    ##
    # The representation of the length in typical music notation.
    class Value
      include Ruby::Enum

      # Base duration value for determining the length of the duration
      BASE_VAL = 6
      define :TWO_HUNDRED_FIFTY_SIXTH, 2**0 * BASE_VAL
      define :ONE_HUNDRED_TWENTY_EIGHTH, 2**1 * BASE_VAL
      define :SIXTY_FOURTH, 2**2 * BASE_VAL
      define :THIRTY_SECOND, 2**3 * BASE_VAL
      define :SIXTEENTH, 2**4 * BASE_VAL
      define :EIGHTH, 2**5 * BASE_VAL
      define :QUARTER, 2**6 * BASE_VAL
      define :HALF, 2**7 * BASE_VAL
      define :WHOLE, 2**8 * BASE_VAL
      define :DOUBLE_WHOLE, 2**9 * BASE_VAL
    end

    ##
    # attributes
    # _type_ : the type of the duration
    # _base_val_ : the base value of the duration
    # _val_ : the value of the duration after modification
    attr_reader :base_val, :val

    ##
    # initialize:
    # initializes the duration based on the type and value
    def initialize(val: nil, raw: nil)
      if raw.nil?
        @base_val = Duration::Value.parse(val)
        @val = @base_val
      else
        @base_val = val
        @val = raw
      end
    end

    def equal?(other)
      @val == other.val
    end

    alias == equal?
  end
end
