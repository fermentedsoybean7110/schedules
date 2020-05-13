Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }
  resources :users, only: [:new, :create] 
  resources :events

  root "events#index"
  
end

