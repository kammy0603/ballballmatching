Rails.application.routes.draw do
  root to: "teams#top"
  resources :users do
    resources :teams
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
     }
  end
end
