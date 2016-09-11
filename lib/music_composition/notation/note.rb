# encoding: utf-8
# frozen_string_literal: true
require 'ruby-enum'

module MusicComposition
  ##
  # The basic representation of a note containing the
  # letter of the note, the quality added to the letter,
  # and the resulting value of the note.
  class Note
    include Pitch
    ##
    # Contains the basic defines of the letter of a note
    # using an enum containing the value modifier and
    # the symbol.
    class Letter
      include Ruby::Enum
      define :A, [0, 9, 'A']
      define :B, [1, 11, 'B']
      define :C, [2,  0, 'C']
      define :D, [3,  2, 'D']
      define :E, [4,  4, 'E']
      define :F, [5,  5, 'F']
      define :G, [6,  7, 'G']

      # Number of letters in the class
      NUMBER_OF_LETTERS = 7
      # The index of the id of the letter
      ID_INDEX = 0
      # The index of the base value of the given letter
      BASE_VAL_INDEX = 1
      # The index of the string or name of a given letter
      NAME_INDEX = 2
    end
    ##
    # Contains the basic defines of the quality of a note
    # using an enum containing the value modifier and
    # the symbol.
    class Quality
      include Ruby::Enum
      define :D_FLAT,  [-2, '𝄫']
      define :FLAT,    [-1, '♭']
      define :NATURAL, [0,  '♮']
      define :SHARP,   [1,  '♯']
      define :D_SHARP, [2,  '𝄪']
      # The index of the value of the quality
      VAL_INDEX  = 0
      # The index of the string or name of a given quality
      NAME_INDEX = 1
    end

    ##
    # attributes
    # _letter_ : the letter of the note
    # _quality_ : the quality of the note
    # _val_ : the raw value of the note based on the
    # base value of the letter and the modifier val
    # of the quality.
    attr_reader :letter, :quality, :val

    ##
    # initialize:
    # initializes the note base on either the letter and
    # quality, letter and val, and quality and val.
    # Only setting one value will result in an argument error.
    # If all three are set, the value will be recalculated to prevent any
    # manual entry errors.
    def initialize(letter: nil, quality: nil, val: nil)
      @letter = Letter.parse(letter)
      @quality = Quality.parse(quality)
      @val = val % 12 if val

      set_vars
    end

    def set_vars
      set_val if @val.nil?
      set_quality if @quality.nil?
      set_letter if @letter.nil?
    end

    def set_val
      raise ArgumentError if @letter.nil? || @quality.nil?
      val = @letter[Letter::BASE_VAL_INDEX]
      val += @quality[Quality::VAL_INDEX]
      val += 12 if val < 0
      @val = val % 12
    end

    def set_quality
      raise ArgumentError if @letter.nil? || @val.nil?
      quality = @val - @letter[Letter::BASE_VAL_INDEX]
      quality += 12 if quality < -2
      quality -= 12 if quality > 2
      Quality.each do |_key, enum|
        @quality = enum.value if quality == enum.value[Quality::VAL_INDEX]
      end
    end

    def set_letter
      raise ArgumentError if @quality.nil? || @val.nil?
      letter = (@val - @quality[Quality::VAL_INDEX]) % 12
      letter += 12 if val < 0
      Letter.each do |_key, enum|
        @letter = enum.value if letter == enum.value[Letter::BASE_VAL_INDEX]
      end
    end

    private :set_vars, :set_val, :set_quality, :set_letter
  end
end
