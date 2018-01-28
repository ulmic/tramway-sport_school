::Tramway::User.root_path = '/admin'
::Tramway::Admin.available_models = [
  ::Tramway::SportSchool::KindSport,
  ::Tramway::SportSchool::Trainer,
  ::Tramway::SportSchool::Document
]

::Tramway::Admin.singleton_models = [
  ::Tramway::SportSchool::Institution
]
