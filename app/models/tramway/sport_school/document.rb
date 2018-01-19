module Tramway::SportSchool
  class Document < ::Tramway::Core::ApplicationRecord
    mount_uploader :file, FileUploader
  end
end
