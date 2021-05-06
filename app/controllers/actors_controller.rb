class ActorsController < ApplicationController
  def single_actor
    render json: Actor.last
  end

  def all_actors
    render json: Actor.all
  end
end
