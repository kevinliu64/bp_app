Rails.application.routes.draw do
  get 'home/index'
  resources :topics do
    resources :posts do
      resources :comments
    end
  end
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
