Rails.application.routes.draw do
  root "static_pages#index"

  get "sign_up", to: "registrations#new"
  
  resources :articles do
    resources :comments
  end
end
