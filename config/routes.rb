Rails.application.routes.draw do
  resources :restaurants do [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
