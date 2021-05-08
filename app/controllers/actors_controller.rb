class ActorsController < ApplicationController
  def single_actor
    actor_id = params[:id]
    actor = Actor.find_by(id: actor_id)
    render json: {id: actor}  
  end

  def all_actors
    render json: Actor.all
  end
end
