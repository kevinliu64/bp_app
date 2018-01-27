Rails.application.routes.draw do
  root 'home#index'
  resources :topics do
    resources :comments
  end
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
