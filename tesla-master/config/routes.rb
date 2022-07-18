Rails.application.routes.draw do
  # get 'products/index'
  # get 'products/show'
  # get 'products/new'
  # get 'products/edit'
  #devise_for :users
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
  get 'home/index'
  # get "auth/google_oauth2/callback"
  resource :users
  resources :products
  get 'auth/google_oauth2/callback'
# devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
end
