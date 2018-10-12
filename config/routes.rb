Rails.application.routes.draw do
  get 'authors', to: "authors#index"
  get 'authors/show'
  get 'books/', to: "books#index"
  get 'books/show'

  namespace :admin do
    resources :books, :authors
  end

  devise_for :users

end
