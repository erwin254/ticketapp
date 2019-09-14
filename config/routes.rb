Rails.application.routes.draw do
  resources :tickets do
	  member do
	    patch 'checked'
	  end
  end
  root 'pages#index'
  get 'pages/contact'
  post 'tickets/checked'
  devise_for :users 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
