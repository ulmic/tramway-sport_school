class Tramway::SportSchool::TrainerDecorator < ::Tramway::Core::ApplicationDecorator
  def self.collections
    [ :all ]
  end

  def full_name
    "#{object.first_name} #{object.last_name} #{object.patronymic}"
  end

  alias title full_name
end
