SurfAndTurf::Application.routes.draw do
  devise_for :users
  root to: 'listings#index'

  resources :listings do
    resources :comments
  end

  resources :searches, :only => [:index]
end
