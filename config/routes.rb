Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"

  resources :users, only: [] do
    collection do
      get :dashboard
      get :edit_profile
      patch :update_profile
      get :my_experiences
      get :invite_friends
    end
  end

  resources :experiences
end
