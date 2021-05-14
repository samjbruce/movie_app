class Movie < ApplicationRecord
  validates :title, length: { in: 1..100 }
  validates :year, numericality: true
  validates :plot, length: { in: 1..500 }
  validates :director, length: { in: 1..100 }
end
