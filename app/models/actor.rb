class Actor < ApplicationRecord
  def description
    "#{first_name} #{last_name} is known for #{known_for}"
  end
end
