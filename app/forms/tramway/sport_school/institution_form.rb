class Tramway::SportSchool::InstitutionForm < ::Tramway::Core::ApplicationForm
  properties :title, :tagline, :logo, :state

  def initialize(object)
    form_object = super object
    form_properties title: :string,
                    tagline: :string
    form_object
  end
end
