class DosesController < ApplicationController
  def new           # GET /restaurants/new
  end

  def create        # POST /restaurants
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.build(doses_params)
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
  end

  def destroy       # DELETE /restaurants/:id
  end


  private
  def doses_params
    params.require(:review).permit(:content)
  end
end
