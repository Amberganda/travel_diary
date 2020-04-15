Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :reviews, only: [:new, :create, :show]
  resources :locations do
    resources :reviews
  end
  resources :users do
    resources :reviews
  end

end
