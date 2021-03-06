Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "restaurants#index"
  resources :restaurants, only: [:index, :new, :show, :create] do
    member do
      resources :reviews, only: [:new, :create]
    end
  end
end
