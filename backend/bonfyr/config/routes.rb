Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :photos
  resources :campgrounds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
