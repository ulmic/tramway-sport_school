module Tramway
  module SportSchool
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
