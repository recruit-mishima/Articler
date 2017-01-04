Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles, only: [:index, :show] do
    collection {get 'search'}
    resources :favourites, only: [:create, :update, :destroy]
  end
  resources :users,  only: :show
end

  # resources :users, only: [:show]
  # get 'articles/:keyword' => 'articles#index'

