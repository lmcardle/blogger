Blogger::Application.routes.draw do
  get "tags/index"

  get "tags/show"

  get "comments/create"

  resources :articles
  resources :comments
  resources :tags
  
  root to: 'articles#index'
end
