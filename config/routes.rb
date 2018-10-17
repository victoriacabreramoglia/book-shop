Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'authors', to: "authors#index"
  resources :books, only: [:index, :show] do
    resources :sales
  end


  namespace :admin do
    resources :books, :authors
  end

  devise_for :users
  get 'styles', to: "styles#index"

end
