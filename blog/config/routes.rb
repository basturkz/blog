Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'


  resources :articles do
  	resources :comments
  end

  get 'welcome/myarticles'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
