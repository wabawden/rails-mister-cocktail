Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/new'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :new, :create, :destroy ]
  end
  resources :doses
  
end



