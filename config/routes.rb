Blogger::Application.routes.draw do
  get "comments/create"

  resources :articles
  resources :comments
end
