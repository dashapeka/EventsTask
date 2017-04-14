Rails.application.routes.draw do


root to: 'events#index'

resources :sessions, only: [:new, :destroy, :create]

resources :events

resources :users, only: [:new, :create, :edit, :show, :update]

#get "users#new"

get "/login" => "sessions#new", as: "login"
delete "/logout" => "sessions#destroy", as: "logout"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
