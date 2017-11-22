Rails.application.routes.draw do
  devise_for :users
  root to: 'homepage#home'

  resource :houses
end