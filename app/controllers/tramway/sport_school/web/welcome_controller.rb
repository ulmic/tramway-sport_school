require_dependency "tramway/sport_school/application_controller"

class Tramway::SportSchool::Web::WelcomeController < ApplicationController
  layout 'tramway/landing/application'
  def index
    @kind_sports = ::Tramway::SportSchool::KindSport.active.published
    @documents = ::Tramway::SportSchool::Document.active
    @trainers = ::Tramway::SportSchool::Trainer.active.published.map { |t| ::Tramway::SportSchool::TrainerDecorator.new t }
    @institution = ::Tramway::SportSchool::Institution.first
  end
end
