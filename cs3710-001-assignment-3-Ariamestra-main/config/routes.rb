Rails.application.routes.draw do
  resources :books_libraries
  resources :books
  resources :libraries
  resources :counties
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
