Ershou::Engine.routes.draw do
  
  get "/" => "topics#index"
  
  resources :nodes
  resources :topics do
    resources :comments
    member do
      put 'open'
      put 'close'
    end
  end

  namespace :settings do
    resources :topics
    resources :comments
  end
  
  namespace :admin do
    resources :nodes
    resources :topics
    resources :comments
  end
  
end
