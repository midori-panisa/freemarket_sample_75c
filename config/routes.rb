Rails.application.routes.draw do
  root "items#index"
  resources :users, only: [:show, :edit, :update] do
    member do
      get 'profile'
      patch 'profile_update'
      get 'logout'
    end
    collection do
      get 'ready'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
