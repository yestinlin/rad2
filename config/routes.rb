Rails.application.routes.draw do
    
  
  

  root 'submits#index'

   resources :submits
   resources :comments

  


  get 'users/new'
  
   
   get  '/about',   to: 'static_pages#about'
   get  '/signup',  to: 'users#new'
   post '/signup',  to: 'users#create'
   get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/comments',   to: 'comments#index'

   get 'comments', to: 'comments#edit'
  get '/submit', to: 'submits#index'
  
resources :sessions
resources :users

resources :submits

  

end
