Rails.application.routes.draw do
  resources :employees
  resources :departments
  resources :jobs
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "departments#index"
end
