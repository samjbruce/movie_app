class MoviesController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    if params[:language]
      movie = Movie.where('english = ?', 'true')
    else 
      movie = Movie.all 
    end
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
    if movie.save
      render json: movie
    else
      render json: {error: movie.errors.full_messages}, status: :unprocessable_entity
    end
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
    movie.image_url = params[:image_url] || movie.image_url
    if movie.save
      render json: movie
    else
      render json: {error: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "Movie removed."}
  end
end
