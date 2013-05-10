Ershou::Engine.routes.draw do
  
  get "/" => "topics#index"
  
  resources :nodes
  resources :topics do
    put :open, on: :member
    put :close, on: :member
    put :preview, on: :collection
    post :preview, on: :collection
    resources :comments do
      put :preview, on: :collection
      post :preview, on: :collection
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
