module Tramway::SportSchool
  class Trainer < ::Tramway::Core::ApplicationRecord
    enumerize :degree, in: [ :master_of_sport, :candidate_master_of_sports ]

    mount_uploader :photo, PhotoUploader
  end
end
