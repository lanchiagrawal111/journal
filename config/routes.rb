Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  root to: "home#index"
  get 'home/index'
  resources :articles do
  resources :comments
  end
end