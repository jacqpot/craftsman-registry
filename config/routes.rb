Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :craftsman
  root to: "craftsman#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end