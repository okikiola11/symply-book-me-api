Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :lawyers 
      resources :appointments, only: [:create, :index, :destroy]
      resources :users, only: [:create]
      post '/create', to: 'authentication#create'
      delete '/destroy', to: "authentication#destroy"
    end
  end
end
