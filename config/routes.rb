Rails.application.routes.draw do
get 'stop/create'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :locations
      resources :itineraries
      resources :stops

    end
  end
end
