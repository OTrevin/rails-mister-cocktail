class DosesController < ApplicationController
  def new
    @cocktail = Cocktial.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id]
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render:new
    end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

end


# NEED TO ADD REVIEWS TO MY FORM
