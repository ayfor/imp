class Ingredient < ApplicationRecord
  @units = %w[piece g kg ml l]

  attr_reader :units

  validates :name, presence: true
  validates :unit, inclusion: { in: @units }
  validates :quantity, numericality: { greater_than: 0 }
end
