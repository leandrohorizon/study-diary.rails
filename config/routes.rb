Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/campuscode', to: 'home#index' #controller e action
  get '/', to: 'home#index' # ou root to: 'home#index'
end
