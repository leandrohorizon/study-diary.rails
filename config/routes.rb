Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/campuscode', to: 'home#index' #controller e action
  # get '/', to: 'home#index' # ou root to: 'home#index'
  root to: 'home#index'

  resources :study_items, only: %i[show new create edit update] do
    patch 'mark_as_done', on: :member
    get :hello_world, on: :collection
  end
end
