Rails.application.routes.draw do

    resources :users, only: [:show, :index, :create] do
      resources :items, only: [:show, :index]
    end
  resources :items, only: [:index] 

end
