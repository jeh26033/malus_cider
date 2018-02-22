Rails.application.routes.draw do

 
  resources :articles
 

  root 'static_pages#home'

  get '/store', to: 'static_pages#store'

  get '/about', to: 'static_pages#about'

  get '/blog', to: 'static_pages#blog'

  get '/contact', to: 'static_pages#contact'

  resources :charges

  get '/newcharge', to: 'charges#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
