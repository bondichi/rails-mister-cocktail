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
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  def doses_params
    params.require(:dose).permit(:description, :id)
  end
end
