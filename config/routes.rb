Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'restaurants'
  # get 'restaurants/new'
  # post 'restaurants'
  # get 'restaurant/:id'

  # get 'restaurants/:id/reviews/new'
  # post 'restaurants/:id/reviews'

  # get 'reviews/new'

  resources :restaurants do
    resources :reviews, only: [:new, :create, :index]
  end

  root to: 'restaurants#index'
end
