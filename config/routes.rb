Rails.application.routes.draw do
<<<<<<< HEAD
  
=======

 
>>>>>>> basic-login

 

  resources :submits
  resources :submissions
  get 'static_pages/help'

  root 'static_pages#home'
  
  get 'static_pages/home'

  
  
  get  'static_pages/submit'
  
  get  'static_pages/about'
  get  'static_pages/comments'

  get 'users/new'
  
   get  '/comments', to: 'static_pages#comments'
   get  '/about',   to: 'static_pages#about'
   get  '/signup',  to: 'users#new'
   post '/signup',  to: 'users#create'
<<<<<<< HEAD
<<<<<<< HEAD
   get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/submit', to: 'submits#index'
=======
    get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/sumit',   to: 'submissions#'
>>>>>>> basic-login
    resources :users
=======
   resources :users
>>>>>>> sign-up
end
