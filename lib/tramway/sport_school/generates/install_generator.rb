require 'rails/generators'
require 'tramway/core/generators/install_generator'

module Tramway::SportSchool::Generators
  class InstallGenerator < ::Tramway::Core::Generators::InstallGenerator
    include Rails::Generators::Migration
    source_root File.expand_path('../templates', __FILE__)

    def run_other_generators
      generate 'tramway:user:install'
    end

    def copy_migrations
      migration_template 'create_tramway_sport_school_kind_sports.rb', 'db/migrate/create_tramway_sport_school_kind_sports.rb'
    end
  end
end
