class DosesController < ApplicationController
  def new           # GET /restaurants/new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create        # POST /restaurants
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.build(doses_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy       # DELETE /restaurants/:id
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end


  private
  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
