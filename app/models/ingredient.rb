class Ingredient < ApplicationRecord
  @units = %w[piece g kg ml l]

  class << self
    attr_reader :units
  end

  validates :name, presence: true
  validates :unit, inclusion: { in: @units }
  validates :quantity, numericality: { greater_than: 0 }
end
