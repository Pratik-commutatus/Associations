Rails.application.routes.draw do

  get '/fileoperations/change' => 'fileoperations#change', as: 'change'
  resources :fileoperations

  get '/calculators/test' => 'calculators#test', as: 'test'
  get '/calculators/subtract' => 'calculators#subtract', as: 'subtract'

  

  get '/calculators/mode' => 'calculators#mmm', as: 'mmm'

  resources :calculators
  resources :users
  resources :members
  resources :images
  resources :appointments
  resources :doctors
  resources :authors do
    resources :books
  end
  resources :accounts
  resources :employees
  root :to => 'employees#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
