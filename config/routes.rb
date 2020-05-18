Rails.application.routes.draw do
<<<<<<< Updated upstream
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }
  resources :users, only: [:new, :create] 
  resources :events

=======
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :events
  
>>>>>>> Stashed changes
  root "events#index"
  
end

# , :controllers => {
#     :registrations => 'users/registrations',
#     :sessions => 'users/sessions'   
#   }

