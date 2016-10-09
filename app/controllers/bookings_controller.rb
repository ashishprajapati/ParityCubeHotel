class BookingsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_hotel_category, only: [:new]

	def new
	end

	def create
	end

	def index
	end

	private

	def set_hotel_category
		@hotel_category = HotelCategory.find(params[:hotel_category_id])
	end
end
