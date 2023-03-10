Rails.application.routes.draw do
  resources :book_reviews
  get 'users/show'
  get 'static_pages/home'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
