class Actor < ApplicationRecord

  belongs_to :movie

  validates :first_name, length: { in: 2..100 }
  validates :last_name, length: { in: 2..100 }
  validates :known_for, presence: true
  validates :age, numericality: { greater_than: 13 }
  
  def description
    "#{first_name} #{last_name} is known for #{known_for}"
  end

  def only_plot
    movie.plot
  end
end
