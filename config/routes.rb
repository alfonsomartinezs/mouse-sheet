Rails.application.routes.draw do
  devise_for :users
  root to: "characters#index"
  resources :characters do
    put    :gain_fate
    patch  :gain_fate
    put    :gain_persona
    patch  :gain_persona
    put    :lose_fate
    patch  :lose_fate
    put    :lose_persona
    patch  :lose_persona

  end
  resources :groups
  resources :user_memberships
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
