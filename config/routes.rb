Rails.application.routes.draw do
  get 'ranking/index'
  root to: "ranking#index"
end
