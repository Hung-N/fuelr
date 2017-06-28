class Vehicle < ApplicationRecord

  validates :make, { presence: true }
  validates :model, { presence: true }
  validates :year, numericality: { greater_than_or_equal_to: 1900 }
  
end
