class AddQuantityUnitAndNameToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :name, :string, null: false, max_length: 50
    add_column :ingredients, :expiration_date, :date
    add_column :ingredients, :quantity, :integer, null: false
    add_column :ingredients, :unit, :string, null: false
  end
end
