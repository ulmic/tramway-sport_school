require_dependency "tramway/sport_school/application_controller"

class Tramway::SportSchool::Web::WelcomeController < ApplicationController
  layout 'tramway/sport_school/application'

  def index
    @kind_sports = ::Tramway::SportSchool::KindSport.active.published
    @documents = ::Tramway::SportSchool::Document.active
    @trainers = ::Tramway::SportSchool::Trainer.active.map { |t| ::Tramway::SportSchool::TrainerDecorator.new t }
  end
end
