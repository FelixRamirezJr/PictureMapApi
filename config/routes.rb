Rails.application.routes.draw do
  devise_for :users
  get "users/sign_in_or_create" => "users#sign_in_or_create", as: :sign_in_or_create
  get "/test" => "users#test", as: :test
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
