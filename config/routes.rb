Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "/", to: "welcome#index", as: "banana"
  root to: "welcome#index"

  resources :recipes, only: [:show, :new, :create]
  resources :cuisines, only: [:show, :new, :create]
end
