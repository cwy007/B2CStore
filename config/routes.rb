Rails.application.routes.draw do
  root 'welcome#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout

  namespace :admin do
    root 'sessions#new'
    resources :sessions, only: [:new]
    resources :categories, only: [:index, :new]
  end
end
