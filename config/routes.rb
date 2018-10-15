Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'authors', to: "authors#index"
  get 'authors/show'
  # get 'books/', to: "books#index"
  get 'books/show'
  get 'books/index'

  namespace :admin do
    resources :books, :authors
  end

  devise_for :users
  get 'styles', to: "styles#index"

end
