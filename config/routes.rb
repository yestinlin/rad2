Rails.application.routes.draw do
  resources :submits


  
  
  get 'static_pages/home'

  
  
  get  'static_pages/submit'
  
  get  'static_pages/about'
  get  'static_pages/comments'

  get 'users/new'
  
   get  '/comments', to: 'static_pages#comments'
   get  '/about',   to: 'static_pages#about'
   get  '/signup',  to: 'users#new'
   post '/signup',  to: 'users#create'
   get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/submit', to: 'submits#index'

   root 'submits#index'

    resources :users

end
