class Movie < ApplicationRecord

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :title, length: { in: 1..100 }
  validates :year, numericality: true
  validates :plot, length: { in: 1..500 }
  validates :director, length: { in: 1..100 }

  def genre_names
    genres.name
  end
end
