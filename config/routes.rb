Tramway::SportSchool::Engine.routes.draw do
  mount Tramway::User::Engine, at: '/users'

  root to: 'web/welcome#index'

  scope module: :web do
    resource :session, only: [ :new, :create, :destroy ]
  end
end
