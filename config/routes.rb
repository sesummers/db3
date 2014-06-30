Rails.application.routes.draw do
  get "/dbuser/:id" => 'application#show'
  get "/create_user" => 'application#create'
  get "/new_user" => 'application#new'
  get "/create_user/:id/edit" => 'application#edit'
  get "/update_user/:id" => 'application#update'
  get "/dbuser/:id/destroy" => 'application#destroy'
end
