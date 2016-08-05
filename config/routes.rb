Rails.application.routes.draw do
  root 'home#index'
  resources :categories
  resources :sub_categories
  resources :entertenments
  resources :slider_tops
end
