class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot
end
