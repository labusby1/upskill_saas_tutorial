Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  #devise_for :users, .... this is from tutorial but I skipped (around stripe)
  
  resources :users do 
    resource :profile
  end
  get 'about', to: 'pages#about'
  resources :contacts, only: :create #We create 7 possible actions, but then specify, not all 7, just new
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end