Rails.application.routes.draw do

#  root 'countries#index'
 resources :countries
#  resources :continents

 root "continents#index"
 get "continents" => "continents#index"
 get 'continents/new' => "continents#new", as: :new_continent
 get "continents/:id" => "continents#show", as: :continent
 post "continents" => "continents#create"
 get 'continents/:id/edit' => 'continents#edit', as: :edit_continent

 patch "continents/:id" => "continents#update"

 delete "continents/:id" => "continents#destroy", as: :delete_continent

end
