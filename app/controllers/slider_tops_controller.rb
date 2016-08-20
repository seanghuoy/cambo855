class SliderTopsController < ApplicationController
	def index
		@slider_tops = SliderTop.all
	end

	def new
		@slider_top = SliderTop.new
	end

	def create
		@slider_top = SliderTop.new(permitted_params)
		@slider_top.save
		redirect_to slider_tops_path
	end

	def edit
		@slider_top = SliderTop.find(params[:id])
	end

	def update
		@slider_top = SliderTop.find(params[:id])
		@slider_top.update(permitted_params)
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
	
end
