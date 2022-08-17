Rails.application.routes.draw do
  root "static_pages#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "login", to: "registrations#login"
  post "login", to: "registrations#login"
  
  resources :articles do
    resources :comments
  end
end
