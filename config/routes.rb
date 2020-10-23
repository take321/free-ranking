Rails.application.routes.draw do
  devise_for :users
  root to: "ranks#index"
  resources :ranks
end
