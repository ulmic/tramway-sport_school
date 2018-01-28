module Tramway
  module SportSchool
    class ApplicationController < ActionController::Base
      layout 'tramway/landing/application'
      protect_from_forgery with: :exception
    end
  end
end
