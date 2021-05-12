class MoviesController < ApplicationController

  def index
    movie = Movie.all
    render json: movie
  end

  def create
    movie = Movie.new(
      title: params[:title], 
      year: params[:year], 
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    movie.save
    render json: movie
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    movie.save
    render json: movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "Movie removed."}
  end
end
