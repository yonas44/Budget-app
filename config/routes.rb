Rails.application.routes.draw do
  devise_for :users
  
  root "groups#index"
  resources :groups, only: %i[index create new update] do
    resources :purchases, only: %i[index create new show]
  end
  resources :users

end
