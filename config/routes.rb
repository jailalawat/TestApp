Rails.application.routes.draw do
  resources :users do
  	collection do 
  		get :search
  	end
  end
  resources :roles do
  	collection do 
  		get :hide_roles
  		post :hide_roles
  	end
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
