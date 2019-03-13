Rails.application.routes.draw do
  get 'areas/index'
  get 'areas/new'
  post 'areas/search' => "areas#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
