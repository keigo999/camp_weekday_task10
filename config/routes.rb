Rails.application.routes.draw do
  get "/" => "areas#index"
  patch '/areas' => "areas#create"
  get 'areas/search' => "areas#search_get"
  post 'areas/search' => "areas#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
