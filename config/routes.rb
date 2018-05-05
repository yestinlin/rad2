Rails.application.routes.draw do
  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/login'
  
  get  'static_pages/submit'
  
  get  'static_pages/about'
  

  get 'users/new'

  resources :submissions

end
