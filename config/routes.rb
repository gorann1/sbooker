Rails.application.routes.draw do
  namespace :admin do
      resources :zones

      root to: "zones#index"
    end
  resources :zones
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
