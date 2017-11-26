module Tramway::SportSchool::Generators
  class InstallGenerator < ::Rails::Generators::Base
    def run_other_generators
      generate 'tramway:user:install'
    end
  end
end
