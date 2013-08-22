UrlShortener::Application.routes.draw do
  root :to => 'urls#index'
  post 'urls' => 'urls#create'
  get '*short_url' => 'urls#expand'
end
