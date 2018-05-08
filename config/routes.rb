Rails.application.routes.draw do
  get 'users/new'

  get 'static_pages/help'

  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/login'
  
  get  'static_pages/submit'
  
  get  'static_pages/about'
  get  'static_pages/comments'

  get 'users/new'
  
   get  '/comments', to: 'static_pages#comments'
   get  '/about',   to: 'static_pages#about'
   get  '/signup',  to: 'users#new'
   post '/signup',  to: 'users#create'
    resources :users
end
