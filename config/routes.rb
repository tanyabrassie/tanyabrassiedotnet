Rails.application.routes.draw do
  get 'homepage/index'

  root 'welcome#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
