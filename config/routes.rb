Rails.application.routes.draw do

  resources :images
  resources :appointments
  resources :doctors
  resources :authors do
    resources :books
  end
  resources :accounts
  resources :employees

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
