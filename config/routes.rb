Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # NEW
  root to: "widgets#new"
  # INDEX
  get 'widgets/' => 'widgets#index'
  # CREATE
  post 'widgets/' => 'widgets#create'
  #DESTROY
  delete '/widgets/:id' => 'widgets#destroy'
end
