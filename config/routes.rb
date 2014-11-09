Rails.application.routes.draw do


  devise_for :users

  root 'frontend#index'

  get "/admin", to: "admin#index", as: :admin_root


  namespace :admin do 
    resources :projects
    resources :project_tags
    resources :project_categories
    resources :posts
    resources :post_categories
    resources :pages
    resources :opinions
  end

  get "/contact", to: "frontend#contact", as: :contact
  post "/contact", to: "frontend#send_contact", as: :send_contact


end
