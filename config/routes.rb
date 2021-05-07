Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/single_actor", controller: "actors", action: "single_actor"
  get "/all_actors", controller: "actors", action: "all_actors"
  get "/all_movies" => "movies#all_movies"
  get "/first_movie" => "movies#first_movie"
end
