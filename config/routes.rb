Rails.application.routes.draw do
  devise_for :users
  
  root "welcome#home"
  get '/groups/all' => "groups#index"
  resources :groups, only: %i[index create new update all] do
    resources :purchases, only: %i[index create new show]
  end
end
