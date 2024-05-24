# frozen_string_literal: true

# Ingredient Controller
class IngredientsController < ApplicationController
  def index
    @recent_ingredients = Ingredient.order(created_at: :desc).limit(4)
  end

  def new
    @ingredient = Ingredient.new
    # render modal partial
    # authorize! :create_request, Ingredient
    puts 'new_request'.center(50, '-')
  end

  def create
    puts 'create_request'.center(50, '-')
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to root_path, notice: 'Ingredient was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :unit, :date)
  end
end
