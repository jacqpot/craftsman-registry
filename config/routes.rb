Rails.application.routes.draw do
  resources :skills
  resources :requests

  resources :toolbelts
  resources :craftsman
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users do 
    resources :toolbelts
  end
  root to: "craftsman#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
