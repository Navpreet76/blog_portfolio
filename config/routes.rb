Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'contacts' => 'contacts#new'
  get 'welcome/index'
  root 'welcome#index' 
end
