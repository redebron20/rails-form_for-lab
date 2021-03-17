Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:new, :create, :edit, :update]
  get '/students/:id', to: 'students#show'
  
  resources :school_classes, only: [:new, :create, :edit, :update]
  get '/school_classes/:id', to: 'school_classes#show'
end
