class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.create(cocktails_params)
    redirect_to cocktail_path(@cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end
