class WelcomeController < ApplicationController

  def index
    @recipes = Recipe.all()
    @cuisines = Cuisine.all
  end

end
