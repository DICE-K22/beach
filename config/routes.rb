Rails.application.routes.draw do
  root to: "reviews#index"
  resources :reviews, only: [:index, :new, :create]
end
