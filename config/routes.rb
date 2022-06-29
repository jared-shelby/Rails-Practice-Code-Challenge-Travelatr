Rails.application.routes.draw do
  resources :posts, :destinations, :bloggers
end
