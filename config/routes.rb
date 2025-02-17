Rails.application.routes.draw do
  resources :people, only: %i[index update]
  resources :flights
  resources :rides
  resources :shuttles

  post 'login', to: 'authentication#login'
  get 'authenticate', to: 'authentication#logged_in?'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
