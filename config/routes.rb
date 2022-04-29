Rails.application.routes.draw do
  get 'about/pages'
  root to: 'pages#home'

  get 'projects', to: 'pages#projects'
  get 'skills', to: 'pages#skills'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'index', to: 'pages#index'
  get 'home/download_pdf'
end
