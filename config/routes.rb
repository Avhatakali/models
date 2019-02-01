Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'users#index'

    resources :users
    resources :occupations
    resources :books
    resources :companies
    resources :vehicles
    resources :cities
    resources :countries
    resources :houses
    resources :clothes
    resources :courses

end
