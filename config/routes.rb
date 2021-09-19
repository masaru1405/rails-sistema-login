Rails.application.routes.draw do
  resources :user_profile, path: "user/profile"

  root 'welcome#index'
  
  devise_for :admins
  devise_for :users, skip: [:registrations]

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
