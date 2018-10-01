Rails.application.routes.draw do
  devise_for :users
  resources :moviees
  root to: "moviees#index"
end
