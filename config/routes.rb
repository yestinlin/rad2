Rails.application.routes.draw do
<<<<<<< HEAD

=======
  

 

  resources :submits
  resources :submissions
  get 'static_pages/help'
>>>>>>> add_submit

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
   get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
<<<<<<< HEAD
  get '/submit', to: 'submits#index'


=======
  get '/submit', to: 'submit#index'
>>>>>>> add_submit
    resources :users

end
