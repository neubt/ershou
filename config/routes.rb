Ershou::Engine.routes.draw do
  
  get "/" => "topics#index"
  
  resources :nodes
  resources :topics do
    resources :comments
  end
  
  namespace :admin do
    resources :nodes
    resources :topics
    resources :comments
  end
  
end
