Rails.application.routes.draw do
  root to: "reviews#index"
  resources :reviews, only: [:index, :new, :create, :show, :destroy]
end
