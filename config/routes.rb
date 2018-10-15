Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :moviees
  root to: "moviees#index"
end
