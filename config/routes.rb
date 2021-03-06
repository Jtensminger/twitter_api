Rails.application.routes.draw do
  use_doorkeeper
  resources :tweets, except: [:new, :edit]
  resources :users, except: [:new, :edit] do
    put :follow
    put :unfollow
    collection do
      post :login
    end
  end
end
