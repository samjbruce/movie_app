class MoviesController < ApplicationController

  def all_movies
    render json: Movie.all.as_json
  end

  def first_movie
    render json: Movie.first.as_json
  end
end
