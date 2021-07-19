Rails.application.routes.draw do
  root to: 'pages#home'

  get 'projects', to: 'pages#projects'
end
