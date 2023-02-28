
Rails.application.routes.draw do
  root to: 'static_page#landing_page'
  get  'static_page/policy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
