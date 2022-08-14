Rails.application.routes.draw do
  root "static_pages#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  resources :articles do
    resources :comments
  end
end
