Rails.application.routes.draw do
  get 'scriptorium', to: 'scriptorium#index'
  get 'welcome/index'

  resources :articles

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
