Rails.application.routes.draw do
  root to: "teams#top"
  resources :users do
    resources :teams

  end
end