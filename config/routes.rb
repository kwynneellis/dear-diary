Rails.application.routes.draw do
  get 'mood_logs/new'
  get 'daily_logs/new'
  devise_for :users
  root to: "daily_logs#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :daily_logs, only: %i[index]
  resources :mood_logs, only: %i[new create index show edit update]
end
