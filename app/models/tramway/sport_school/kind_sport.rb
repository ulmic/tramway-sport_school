module Tramway::SportSchool
  class KindSport < ::Tramway::Core::ApplicationRecord
    state_machine :view_state, initial: :published do
      state :published
      state :hidden

      event :publish do
        transition hide: :published
      end

      event :hide do
        transition published: :hide
      end
    end

    scope :published, -> { where view_state: :published }
    scope :hidden, -> { where view_state: :hidden }
  end
end
