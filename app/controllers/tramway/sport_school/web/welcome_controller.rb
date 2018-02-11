require_dependency "tramway/sport_school/application_controller"

class Tramway::SportSchool::Web::WelcomeController < ::Tramway::SportSchool::ApplicationController
  def index
    @kind_sports = ::Tramway::SportSchool::KindSport.active.published.map { |k| ::Tramway::SportSchool::Features::KindSportDecorator.new k }
    @documents = ::Tramway::SportSchool::Document.active
    @trainers = ::Tramway::SportSchool::Trainer.active.published.map { |t| ::Tramway::SportSchool::Cards::TrainerDecorator.new t }
    @institution = ::Tramway::SportSchool::Institution.first
    @blocks = ::Tramway::Landing::Block.on_main_page
    @organizations = ::Tramway::SportSchool::Organization.published
  end
end
