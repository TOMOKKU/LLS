Rails.application.routes.draw do
  get 'vegetable/index'
  get 'users/index'
  root to: "home#top"
  devise_for :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end