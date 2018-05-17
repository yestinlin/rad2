Rails.application.routes.draw do
  
  

  root 'submits#index'

   resources :submits, except: :index 
   resources :comments, only: [:create, :edit, :update, :destroy]

  


  get 'users/new'
  
   get '/submits_with_button', to: 'submits#index_with_button', as: 'submits_with_button'
   get  '/about',   to: 'static_pages#about'
   get  '/signup',  to: 'users#new'
   post '/signup',  to: 'users#create'
   get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/comments',   to: 'comments#index'

   get 'comments', to: 'comments#edit'
  get '/submit', to: 'submits#index'
  
resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  resources :users, only: [:new, :create]
end


