Blogger::Application.routes.draw do
  devise_for :users

  get "tags/index"

  get "tags/show"

  get "comments/create"

  resources :articles
  resources :comments
  resources :tags
  
  devise_scope :user do
    get "sign_out", to: "devise/sessions#destroy"
  end
  
  root to: 'articles#index'
end
