# encoding: utf-8
# frozen_string_literal: true

include MusicComposition

# Compares two notes and returns true if equal,
# false otherwise.
def compare_note(n1, n2)
  ((n1.val == n2.val) && (n1.letter == n2.letter) && (n1.quality == n2.quality))
end
