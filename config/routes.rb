Rails.application.routes.draw do
 

  devise_for :admins
  root 'home#index'

  resources :articles do
    resources :comments
  end

 get 'about', to: 'about#index', as: 'about'
get 'contact', to: 'messages#new', as: 'contact'
post 'contact', to: 'messages#create'
end
