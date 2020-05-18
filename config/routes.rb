Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :events
  
  root "events#index"
  
end

# , :controllers => {
#     :registrations => 'users/registrations',
#     :sessions => 'users/sessions'   
#   }

