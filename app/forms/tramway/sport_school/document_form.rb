class Tramway::SportSchool::DocumentForm < ::Tramway::Core::ApplicationForm
  properties :title, :file

  def initialize(object)
    form_object = super object
    form_properties title: :string, file: :file
    form_object
  end
end
