class RecipesController < ApplicationController

  def index
    @search_term = params[:looking_for]
    @recipes = Recipe.for(@search_term)
  end
end
