Rails.application.routes.draw do
  get 'authors/index'
  get 'genres/index'
  get 'books/index'
  get 'books/create'
  get 'books/new'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
resources :books, only: [:index, :new, :show, :create, :update, :detroy]
resources :authors, only: [:index]
resources :genres, only: [:index]
end
