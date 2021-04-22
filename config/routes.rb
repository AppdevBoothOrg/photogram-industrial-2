Rails.application.routes.draw do
  root "photos#index"

  
  devise_for :users
  
  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get ":username/liked" => "photos#liked", as: :liked_photos
  get ":username/feed" => "photos#feed", as: :feed_photos
  get ":username/followers" => "photos#liked", as: :followers_list
  get ":username/following" => "photos#liked", as: :following_list
  
  get ":username" => "users#show", as: :user
end
