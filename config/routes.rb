Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :cities
  resources :gossips do
    resources :comments, only: [:new, :create, :index, :destroy]
  end
  get 'static_pages/contact', to: 'static_pages#contact'

  get 'static_pages/team', to: 'static_pages#team'

  get 'welcome/:id', to: 'welcome#welcome_page'

  get 'bonjour/:id', to: 'welcome#bonjour_page'

  get 'users/:id', to: 'users#show'

  root 'home_page#index'

end
