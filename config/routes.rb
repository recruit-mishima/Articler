Rails.application.routes.draw do
  devise_for :users
  root 'articles#top'
  get 'articles' => 'articles#top'
  get 'articles/search' => 'articles#search'#top page
  resources :articles, only: [:show] do
    resources :favourites, only: :create
  end
end

  # resources :users, only: [:show]
  # get   'users/:id'   =>  'users#show'
  # get 'articles/:keyword' => 'articles#index'

