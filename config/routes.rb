Rails.application.routes.draw do
  devise_for :users
  root to: "ranks#index"
  resources :ranks do
    resources :category, only: :index
  end
  resources :users, only: :show
end
