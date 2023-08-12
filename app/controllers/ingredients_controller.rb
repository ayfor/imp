class IngredientsController < ApplicationController
  def index; end

  def create_request
    # render modal partial
    # authorize! :create_request, Ingredient
    puts 'create_request'.center(50, '-')
  end
end
