class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save # results in true or false
      redirect_to @cocktail
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
