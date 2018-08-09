class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(doses_params)
    @ingredient = Ingredient.find(params[:dose][:ingredient])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.ingredient = @ingredient
    @dose.cocktail = @cocktail
    @dose.save
    @cocktail.save
  end

  def doses_params
    params.require(:doses).permit(:description)
  end

  def doses_params
    params.require(:dose).permit(:description)
  end
end
