require 'font-awesome-rails'

module Tramway
  module SportSchool
    class Engine < ::Rails::Engine
      isolate_namespace Tramway::SportSchool
      I18n.available_locales = [:ru]
      I18n.default_locale = :ru
    end
  end
end
