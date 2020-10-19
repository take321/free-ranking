Rails.application.routes.draw do
  devise_for :users
  get 'ranking/index'
  root to: "ranking#index"
end
