Rails.application.routes.draw do

  get 'items/:id', to: "items#show"
  get 'verify_age', to: "items#verify_age"
  get 'law' => 'home#law'
  post 'orders/create' => 'orders#create'
  post 'order_details/create' =>'order_details#create'
  get 'order_details/index'
  get 'orders/index'
  post "address/create" => "address#create"
  get "addresses/index" => "addresses#index"
  post "cart/create" =>"cart#create"
  post "cart/:id/add" =>"cart_item#add"
  get 'cart_item/index'
  get 'cart/index' => "cart#index"
  post "items/:id/destroy" => "items#destroy"
  post "items/:id/update" => "items#update"
  get "items/:id/edit" => "items#edit"
  get "admin/index" => "items#index"
  get "items/admin" => "items#admin"
  post "items/create" => "items#create"
  get "admin/:id" => "items#change"
  get 'items/:id' => "items#show"
  post "logout" => "users#logout"
  post "login" => "users#login"
  get "login" => "users#login_form"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/:id" => "users#show"
  get "inquiry" => "home#inquiry"
  get "privacy" => "home#privacy"
  get "guide" => "home#guide"
  get "company" => "home#company"
  get "top" => "home#top"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
