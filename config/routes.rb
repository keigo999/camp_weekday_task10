Rails.application.routes.draw do
  root "areas#index"
  get "/" => "areas#index"
  post '/areas' => "areas#create"
  get 'areas/search' => "areas#search_get"
  post 'areas/search' => "areas#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
