class PlantTypesController < ApplicationController
  def new
  	@plant = Plant.find(params[:plant_id])
  	@plant_type = PlantType.new
  end

  def create
  	@plant_type = PlantType.new(plant_type_params)
  	@plant = Plant.find(params[:plant_id])
  	@plant_type.plant = @plant
  	if @plant_type.save
  		redirect_to garden_path(@plant.garden)
  	else
  		render :new
  	end
  end

  private

  def plant_type_params
  	params.require(:plant_type).permit(:tag_id)
  end
end
