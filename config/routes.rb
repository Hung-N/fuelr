Rails.application.routes.draw do


  resources :locations

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  resources :vehicles


  # root to: 'home#index'

  get 'welcome/index'

  get '/', to: 'welcome#index', as: :root
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
