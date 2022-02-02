Rails.application.routes.draw do
  resources :job_histories
  resources :jobs
  resources :grades
  resources :employees
  resources :users
  resources :roles
  resources :businesses
  resources :addresses
  resources :cities
  resources :regions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
