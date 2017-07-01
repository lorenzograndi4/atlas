Rails.application.routes.draw do
  root "continents#index"

  # get "continents" => "continents#index"

  resources :continents
end
