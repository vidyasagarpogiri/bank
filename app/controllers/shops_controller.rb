class ShopsController < ApplicationController
	def index
		@shops = Shop.all
	end

	def new
		@shop = Shop.new
	end

	def create
		@shop = Shop.create(shop_params)
		redirect_to shops_path
	end


	private
	def shop_params
		params.require(:shop).permit(:name,:accountnumber)
	end

end
