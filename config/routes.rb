Rails.application.routes.draw do
  get 'articler' => 'articler#top'
  get 'articler/search' => 'articler#search'#top page
  get 'articler/:keyword' => 'articler#index'
  get 'articler/:id' => 'articler#show'
end
