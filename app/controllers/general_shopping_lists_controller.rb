class GeneralShoppingListsController < ApplicationController
      def index
    @recipes = current_user.recipes
    @all_recipe_foods = @recipes.map(&:recipe_foods)

    @recipe_foods = @all_recipe_foods.select { |recipe| recipe.quantity > recipe.food.quantity }
  end
end
