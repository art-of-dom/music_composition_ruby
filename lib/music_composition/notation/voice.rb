# frozen_string_literal: true

##
# Contains the structure for a single melodic line also known as a voice
module MusicComposition
  attr_reader :measure, :end_meausre, :end_beat
  ##
  # Contains the structure for a single melodic line also known as a voice
  class Voice
    def initialize(measures)
      @measure = measures
    end

    def add_note(note, dur, mes: nil, beat: nil)
      @measure[mes].insert_note(beat, note, dur)
    end

    # def remove_note; end

    # def copy_measure; end

    # def delete_measure; end
  end
end
