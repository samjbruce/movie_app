require "http"

all_movies = HTTP.get("http://localhost:3000/all_movies")

movies = all_movies.parse
p movies
