Rails.application.routes.draw do
  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/login'
  
  get  'static_pages/submit'

  get 'users/new'

  resources :submissions

end
