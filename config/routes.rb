Rails.application.routes.draw do
  devise_for :users
  root to: "characters#index"
  resources :characters
  resources :skills
  resources :advancements do 
    patch  :pass 
    put    :pass 
    patch  :fail
    put    :fail
  end
  resources :items
  resources :wisdoms
  resources :trait_advancements do
    patch :increment 
    put   :increment
    patch :decrement 
    put   :decrement
  end


end
