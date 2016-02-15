class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show          # GET /restaurants/:id
    @cocktail = Cocktail.find(params[:id])
  end

  def new           # GET /restaurants/new
    @cocktail = Cocktail.new
  end

  def create        # POST /restaurants
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy       # DELETE /restaurants/:id
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end

end
