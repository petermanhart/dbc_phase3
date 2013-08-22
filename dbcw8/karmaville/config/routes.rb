Karmaville::Application.routes.draw do
  resources :users, :only => [:index]

  root :to => 'users#index'

  match '/page/:page_id' => 'users#page'

end
