Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'authors', to: "authors#index"
  get 'books/', to: "books#index"
  get 'books/:id', to: 'books#show'
  get 'sales', to: 'sales#new'
  post 'sales', to: 'sales#create'


  namespace :admin do
    resources :books, :authors
  end

  devise_for :users
  get 'styles', to: "styles#index"

end
