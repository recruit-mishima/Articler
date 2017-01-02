Rails.application.routes.draw do
  root 'articlers#top'
  get 'articlers' => 'articlers#top'
  get 'articlers/search' => 'articlers#search'#top page
  resources :articlers, only: [:show]
  # get 'articlers/:keyword' => 'articlers#index'
end
