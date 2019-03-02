Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get '/query_params' => 'pages#query_action'
    get '/name_route' => 'pages#name_action'
    get '/game_route' => 'pages#game_action'
    get '/segment_route/:place' => 'pages#segment_action'
  end
end
