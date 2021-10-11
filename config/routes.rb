Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :lawyers 
      resources :appointments, only: [:create, :index, :destroy]
      resources :users, only: [:create]
      post '/login', to: 'authentication#login'
      delete '/logout', to: "authentication#destroy"
    end
  end
end
