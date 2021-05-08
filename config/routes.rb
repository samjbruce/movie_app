Rails.application.routes.draw do

  #Displays a single actor using a Query Parameter
  get "/single_actor" => "actors#single_actor"

  #Displays a single actor using a URL Segment Parameter
  get "/single_actor/:id" => "actors#single_actor"

  #Displays a single actor using a Body Parameter
  post "/single_actor" => "actors#single_actor"

  #Displays all actors
  get "/all_actors" => "actors#all_actors"

  #Displays all actors
  get "/all_movies" => "movies#all_movies"

end
