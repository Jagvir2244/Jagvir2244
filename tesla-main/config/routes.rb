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
  resource :users
  resources :products
#devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
end
