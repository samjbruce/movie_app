class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :director, :english
end
