Rails.application.routes.draw do
  root 'article#index'

  # get "/article/:id", to: "article#show"

  resources :article


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
