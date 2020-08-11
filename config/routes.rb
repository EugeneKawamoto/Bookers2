Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  root 'books#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :create, :index, :show, :edit]
  resources :users, only: [:index, :show, :edit, :update]
end
