Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index, :new, :update, :delete]
  end
end
