Rails.application.routes.draw do
  root to: 'tweets#index'
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  
  resources :tweets
  resources :users,only:[:show] do
    resources :chats,only:[:index]
  end
  resources :chats,only:[:show] do
    resources :messages,only:[:create]
  end
  resources :admins,only:[:index]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
