Rails.application.routes.draw do
  root "articles#index"
  
  recources :articles
end
