class AddQuantityUnitAndNameToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :name, :string
    add_column :ingredients, :date, :date
    add_column :ingredients, :quantity, :integer
    add_column :ingredients, :unit, :string
  end
end
