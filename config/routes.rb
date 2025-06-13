Rails.application.routes.draw do
  get 'contacts/new' => "contacts#new", as: :contacts_new
  root 'home#index'
  resources :contacts, only: [:new, :create]



  post 'contacts/create' => "contacts#create", as: :contacts_create
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
