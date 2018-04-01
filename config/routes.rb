Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
  resources :categories, only: [:show]
  resources :products, only: [:show]
  resources :shopping_carts do
    collection do
      delete :clear
    end
  end
  resources :addresses do
    member do
      put :set_default_address
    end
  end
  resources :orders
  resources :payments, only: [:index] do
    collection do
      get :generate_pay 
    end
  end

  namespace :admin do
    root 'sessions#new'
    resources :sessions, only: [:new]
    resources :categories
    resources :products do
      resources :product_images, only: [:index, :create, :destroy, :update]
    end
  end
end
