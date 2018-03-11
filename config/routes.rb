Rails.application.routes.draw do

  root 'rides#new'

  resources :rides
  resources :drivers

end
