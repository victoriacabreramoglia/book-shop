Rails.application.routes.draw do
  get 'authors/index'
  get 'authors/show'
  get 'books/index'
  get 'books/show'

  namespace :admin do
    resources :books, :authors
  end

  devise_for :users

end
