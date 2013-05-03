Rails.application.routes.draw do

  devise_for :users
  resources :users
  mount Ershou::Engine => "/ershou"
end
