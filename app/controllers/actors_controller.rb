class ActorsController < ApplicationController
  def index
    actor = Actor.all
    render json: actor
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      known_for: params[:known_for]
    )
    actor.save
    render json: actor
  end

  def show
    actor = Actor.find(params[:id])
    render json: actor
  end

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.save
    render json: actor
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "Actor removed."}
  end
end
