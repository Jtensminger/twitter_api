Rails.application.routes.draw do
  use_doorkeeper
  resources :tweets, except: [:new, :edit]
  resources :users, except: [:new, :edit]
end
