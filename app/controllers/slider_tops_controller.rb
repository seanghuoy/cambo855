class SliderTopsController < ApplicationController
	def index
		@slider_tops = SliderTop.all
	end

	def new
		@slider_top = SliderTop.new
	end

	def create
		@slider_top = SliderTop.new(slider_top_params)
		@slider_top.save
		redirect_to slider_tops_path
	end

	def edit
		@slider_top = SliderTop.find(params[:id])
	end

	def update
		@slider_top = SliderTop.find(params[:id])
		@slider_top.update(slider_top_params)
		flash.notice = "Article '#{@slider_top.name}' Updated!"
		redirect_to slider_tops_path
	end

	def destroy
		@slider_top = SliderTop.find(params[:id])
		@slider_top.destroy
		redirect_to slider_tops_path
	end

	def show
		@slider_top = SliderTop.find(params[:id])
		@slider_tops = SliderTop.all
	end

	def slider_top_params
		params.require(:slider_top).permit(:name, :slider_url, :sorted_on, :description, :image)
	end
end
