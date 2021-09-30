Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :lawyers 
      resources :appointments, only: [:create, :index]
      # resources :sessions, only: [:create, :destroy]
      resources :users, only: [:create]
      post '/login', to: 'authentication#login'
    end
  end
end
