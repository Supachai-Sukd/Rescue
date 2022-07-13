Rails.application.routes.draw do
  get 'public/home'
  get 'public/about'
  resources :user_books
  resources :books
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
