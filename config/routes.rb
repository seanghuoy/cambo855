Rails.application.routes.draw do
  
  root 'home#index'
  resources :categories
  resources :sub_categories
  resources :entertenments
  resources :slider_tops

  get 'get_sub_categories/:cat_id' => 'option#get_sub_categories', as: 'get_sub_categories'

end
