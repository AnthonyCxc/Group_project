Rails.application.routes.draw do
  devise_for :admin_users
  
  #devise_for :pto_users
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  resources :project_causes

  resources :users do
  	resources :user_votes
  end

end
