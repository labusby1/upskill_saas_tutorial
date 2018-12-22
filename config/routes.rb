Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create #We create 7 possible actions, but then specify, not all 7, just new
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end