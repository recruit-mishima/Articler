Rails.application.routes.draw do
  devise_for :users
  root 'articlers#top'
  get 'articlers' => 'articlers#top'
  get 'articlers/search' => 'articlers#search'#top page
  resources :articlers, only: [:show]
  resources :users, only: [:show]
  get   'users/:id'   =>  'users#show'
  # get 'articlers/:keyword' => 'articlers#index'
end
