Rails.application.routes.draw do
  resources :questions
  resources :assignments
  resources :assignings
  devise_for :students
  devise_for :admins
  get 'home/index'
  root to: 'home#index'
	resources :admins, only: [:show]
	resources :students, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
