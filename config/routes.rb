Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#about"

  resources :topics, only: [:index, :show, :new, :create, :edit, :update]
end
