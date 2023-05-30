Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'
  devise_for :users
  resources :animals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "animals#index"
end
