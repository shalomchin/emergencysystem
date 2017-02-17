Rails.application.routes.draw do
  get 'welcome/index'
  root "welcome#index"
  devise_for :users
  resources :posts do
  	resources :comments
  end

  # get 'posts/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
