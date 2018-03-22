# frozen_string_literal: true

module MusicComposition
  attr_reader :measure, :end_meausre, :end_beat
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
