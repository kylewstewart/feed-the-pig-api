Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      resources :users, only: [:create]
      resources :goals, only: [:index, :create, :update, :destroy]
    end
  end
end
