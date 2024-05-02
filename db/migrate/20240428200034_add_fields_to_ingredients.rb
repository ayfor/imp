class AddFieldsToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :price, :decimal  # or :decimal if you need more precision
  end
end
