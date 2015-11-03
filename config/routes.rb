Rails.application.routes.draw do
  resources :tweets, except: [:new, :edit]
  resources :users, except: [:new, :edit] do
    collection do
      post :login
    end
  end
end
