Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'locations/index'
  namespace :admin do
      resources :categories
      resources :centers
      resources :cities
      resources :countries
      resources :currents
      resources :depths
      resources :regions
      resources :types
      resources :visibilities
      resources :zones
      root to: "zones#index"
    end
  resources :zones
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'centers', to:'centers#index'
  get 'locations', to:'locations#index'

  # Defines the root path route ("/")
  root "pages#home"

  get '/centers/turbo_frame_form' => 'centers#turbo_frame_form', as: 'turbo_frame_form'
  post '/centers/turbo_frame_submit' => 'centers#turbo_frame_submit', as: 'turbo_frame_submit'

end
