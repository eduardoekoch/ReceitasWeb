class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @cuisines = Cuisine.all
  end

  def create
    recipe_params = params.require(:recipe).permit(:title, :recipe_type, :cuisine_id, :difficulty, :ingredients, :cook_time, :cook_method)
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipe_url(@recipe.id)
  end
end
