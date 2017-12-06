Tramway::SportSchool::Engine.routes.draw do
  mount Tramway::User::Engine, at: '/users'
  mount Tramway::Admin::Engine, at: '/admin'

  root to: 'web/welcome#index'

  scope module: :web do
    resource :session, only: [ :new, :create, :destroy ]
  end
end
