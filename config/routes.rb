Rails.application.routes.draw do

  root to: 'static_pages#home'

  devise_for :users

  # STATIC PAGES
  get 'help' => "static_pages#help"
  get 'about' => "static_pages#about"
  get 'contact' => "static_pages#contact"
  get "terms" => "static_pages#terms"
  get "privacy" => "static_pages#privacy"

  # USERS
  resources :users, only: [:show]

end
