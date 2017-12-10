class Tramway::SportSchool::KindSportDecorator < ::Tramway::Core::ApplicationDecorator
  def self.collections
    [ :all, :published, :hidden ]
  end
end
