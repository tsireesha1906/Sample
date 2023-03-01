Rails.application.routes.draw do
  get 'attendances/index'
  get 'attendances/new'
  get 'attendances/edit'
  get 'students/index'
  get 'students/new'
  get 'students/create'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
  get 'colleges/index'
  get 'colleges/new'
  get 'colleges/create'
  get 'colleges/edit'
  get 'colleges/update'
  get 'colleges/destroy'
  get 'cities/index'
  get 'cities/new'
  get 'cities/edit'
  get 'cities/update'
  get 'cities/create'
  get 'cities/destroy'
  #get 'states/index'
  resources :countries
  resources :states
  resources :cities
  resources :colleges
  resources :students
  resources :attendances

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

end
