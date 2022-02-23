Rails.application.routes.draw do
  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :reviews, only: [ :create ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
