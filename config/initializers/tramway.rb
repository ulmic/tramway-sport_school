::Tramway::User.root_path = '/admin'
::Tramway::Admin.set_available_models ::Tramway::SportSchool::KindSport,
                                      ::Tramway::SportSchool::Trainer,
                                      ::Tramway::SportSchool::Document

::Tramway::Admin.set_singleton_models ::Tramway::SportSchool::Institution
