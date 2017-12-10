class Tramway::SportSchool::KindSportForm < ::Tramway::Core::ApplicationForm
  properties :title

  def initialize(object)
    form_object = super object
    form_properties title: :string
    form_object
  end
end
