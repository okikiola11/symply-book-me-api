Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :lawyers 
      resources :appointments, only: [:create, :index, :destroy]
      resources :users, only: [:create]
      resources :authentication, only: [:create, :destroy]
    end
  end
end
        