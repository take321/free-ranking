Rails.application.routes.draw do
  devise_for :users
  root to: "ranking#index"
  resources :ranking
end
