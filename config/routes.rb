Rails.application.routes.draw do
  


  root to: 'static_pages#home'

  get '/contact', to: 'static_pages#contact'
  get '/about',	to: 'static_pages#about'
  get '/home', to: 'static_pages#home'
  get '/suscribe', to: 'users_page#users'
 	
  post '/suscribe', to: 'users_page#new'
  get '/users/:username', to: 'users_page#show'
  #get '/:action/:id', to: 'users_page#show' 
  get '/error', to: 'users_page#error'


end
