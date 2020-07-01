Rails.application.routes.draw do
  root 'project#index'
  
  post 'create' => 'project#create'

resources :project
end
