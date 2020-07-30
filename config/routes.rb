Rails.application.routes.draw do
  devise_for :users
  root to: "characters#index"
  resources :characters
end
