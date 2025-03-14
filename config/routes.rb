Rails.application.routes.draw do
  devise_for :users
  root to: "bikes#index"
  # get "/contact", to: "pages#contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # resources :user
  get "orders/:id", to: "orders#set_pending", as: :set_pending
  resources :my_bikes, only: [:index]
  resources :checkouts, only: [:show]

  resources :bikes, except: [:index] do
    resources :orders, only: [:create]
  end
  resources :orders
end
