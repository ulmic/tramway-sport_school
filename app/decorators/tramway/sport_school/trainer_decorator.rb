class Tramway::SportSchool::TrainerDecorator < ::Tramway::Core::ApplicationDecorator
  def self.collections
    [ :all ]
  end

  def full_name
    "#{object.first_name} #{object.last_name} #{object.patronymic}"
  end

  def initial_short_name
    "#{object.last_name} #{object.first_name[0]}. #{object.patronymic[0]}."
  end

  alias title full_name

  delegate :photo, to: :object
  delegate :degree, to: :object
end
