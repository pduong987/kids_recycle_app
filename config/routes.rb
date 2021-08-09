Rails.application.routes.draw do
  devise_for :users
  get 'listings/index'
  get 'listings/buy'
  get 'listings/sell'
  get 'listings/swap'
  get 'listings/free'
  post 'listings/create'
  # Make home page
  root 'home#page'

end
