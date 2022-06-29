Rails.application.routes.draw do
  resources :bloggers, only: [:new, :create, :show]
  resources :posts
  resources :destinations
end
