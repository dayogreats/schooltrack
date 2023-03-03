
Rails.application.routes.draw do
  get 'home/index'

  devise_for :users, controllers: { 
    confirmations: 'users/confirmations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

resources :users, only: [:index, :show]

  root to: 'static_page#landing_page'
  get  'static_page/policy'
  get 'profile', to: 'users#show', as: 'profile'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  unauthenticated do
    get  "home/index"
  end
end
