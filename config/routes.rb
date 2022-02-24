Rails.application.routes.draw do
  resources :companies
  resources :contacts
  resources :activities
  resources :tasks
  resources :users
end
