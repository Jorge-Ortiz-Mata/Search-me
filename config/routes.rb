Rails.application.routes.draw do
  root 'users#index'
  get 'search/user', to: 'users#search_user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
