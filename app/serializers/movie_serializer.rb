class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :director, :english, :image_url, :genres
end
