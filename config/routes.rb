Rails.application.routes.draw do
  get 'users/show'
  get 'foods/index'
  devise_for :users, controllers: {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations', 
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }

  get 'vegetable/index'
  get 'users/index'
  root to: "home#top"

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end