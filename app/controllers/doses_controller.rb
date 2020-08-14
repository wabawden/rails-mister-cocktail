class DosesController < ApplicationController
  def new
    @dose = Dose.create
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    if @dose.save
        redirect_to cocktail_path(@dose.cocktail)
      else
        @cocktail = @dose.cocktail
        render 'cocktails/show'
      end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
  end
  
  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
