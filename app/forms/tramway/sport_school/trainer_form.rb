class Tramway::SportSchool::TrainerForm < ::Tramway::Core::ApplicationForm
  properties :first_name, :last_name, :patronymic, :photo, :degree

  def initialize(object)
    form_object = super object
    form_properties first_name: :string,
                    last_name: :string,
                    patronymic: :string,
                    photo: :file,
                    degree: :default
    form_object
  end
end
