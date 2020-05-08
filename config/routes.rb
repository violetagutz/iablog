Rails.application.routes.draw do

  root to: 'static_pages#home'

  devise_for :users

  # STATIC PAGES
  get 'help' => "static_pages#help"
  get 'about' => "static_pages#about"

end
