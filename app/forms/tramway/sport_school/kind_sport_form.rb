class Tramway::SportSchool::KindSportForm < ::Tramway::Core::ApplicationForm
  properties :title, :view_state, :image

  def initialize(object)
    form_object = super object
    form_properties title: :string, image: :file
    form_object
  end
end
