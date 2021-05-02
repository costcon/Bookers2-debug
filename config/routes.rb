Rails.application.routes.draw do
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resources :book_comments,only: [:create, :destroy]
  end

  get 'home/about' => 'homes#about'
  root 'homes#top'


end
