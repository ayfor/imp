class Ingredient < ApplicationRecord
  @units = %w[piece g kg ml l].freeze

  def self.units
    @UNITS
  end

  validates :name, presence: true
  validates :unit, inclusion: { in: @units }
  validates :quantity, numericality: { greater_than: 0 }
end
