Rails.application.routes.draw do
  devise_for :users
  root to: "reviews#index"
  resources :reviews, only: [:index, :new, :create, :show, :destroy, :search] do
    resources :comments, only: [:create, :new]
    collection do
      get 'search'
    end
  end
end
