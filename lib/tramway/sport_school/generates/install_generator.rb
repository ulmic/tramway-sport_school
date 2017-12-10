require 'rails/generators'
require 'tramway/core/generators/install_generator'

module Tramway::SportSchool::Generators
  class InstallGenerator < ::Tramway::Core::Generators::InstallGenerator
    include Rails::Generators::Migration
    source_root File.expand_path('../templates', __FILE__)

    def run_other_generators
      generate 'tramway:user:install'
    end

    def self.next_migration_number(path)
      next_migration_number = current_migration_number(path) + 1
      ActiveRecord::Migration.next_migration_number next_migration_number
    end

    def copy_migrations
      migration_template 'create_tramway_sport_school_kind_sports.rb', 'db/migrate/create_tramway_sport_school_kind_sports.rb'
      migration_template 'add_state_to_tramway_sport_school_kind_sports.rb', 'db/migrate/add_state_to_tramway_sport_school_kind_sports.rb'
    end
  end
end
