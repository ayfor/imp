class AddFieldsToIngredients < ActiveRecord::Migration[7.0]
  def change
    remove_column :ingredients, :date, :date
    add_column :ingredients, :expiry_date, :datetime
    add_column :ingredients, :price, :decimal  # or :decimal if you need more precision
    add_column :ingredients, :weight, :float  # or :decimal if you need more precision
  end
end
