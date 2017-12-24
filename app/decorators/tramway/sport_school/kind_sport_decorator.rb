class Tramway::SportSchool::KindSportDecorator < ::Tramway::Core::ApplicationDecorator
  def self.collections
    [ :all, :published, :hidden ]
  end

  def view_state_button_color(event)
    case event
    when :publish
      :primary
    when :hide
      :secondary
    end
  end
end
