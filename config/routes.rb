Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "firms#dashboard"

  resources :firms
  get 'attorneys_list', to: 'firms#attorneys_list', as: :attorneys_list
end
