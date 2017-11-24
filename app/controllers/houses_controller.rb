class HousesController < ApplicationController

	def new
		@house = House.new
	end

	def create
		@house = House.create(house_params)

		if @house.save
			redirect_to( root_path, notice: "Success!")
		else
			render( 'new', notice: "Can't save!")
		end
	end


private

	def house_params
		params.require(:house).permit(:house_type, :rooms, :price, :image)
	end

end