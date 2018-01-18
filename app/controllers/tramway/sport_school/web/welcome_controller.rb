require_dependency "tramway/sport_school/application_controller"

class Tramway::SportSchool::Web::WelcomeController < ApplicationController
  layout 'tramway/sport_school/application'

  def index
    @kind_sports = ::Tramway::SportSchool::KindSport.all
  end
end
