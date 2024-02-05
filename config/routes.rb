Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'  # POST request to handle login
  get 'logout', to: 'sessions#destroy', as: :logout

  resources :users, only: [:new, :create, :show]  # Define routes for user registration
  
  
  resources :posts do
    collection do
      get 'search'
    end
    resources :messages
  end



  # Route for health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path
  root "sessions#new"  # Redirect to login page by default
end
