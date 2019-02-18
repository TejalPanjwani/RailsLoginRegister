Rails.application.routes.draw do



  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    collection do
      
      get :singup
      #get :singin
      get :main
    end
  end

  
end
