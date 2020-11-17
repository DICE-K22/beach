Rails.application.routes.draw do
  devise_for :users
  root to: "reviews#index"
  resources :reviews, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: [:create, :new]
  end
end
