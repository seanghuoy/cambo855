class EntertenmentsController < ApplicationController
	def index
		@entertenments = Entertenment.all
	end
	def new
		@entertenment = Entertenment.new
	end

	def create
		@entertenment = Entertenment.new(entertenment_params)
	  @entertenment.save
	  redirect_to entertenments_path
	end

	def edit
	  @entertenment = Entertenment.find(params[:id])
	end

	def update
	  @entertenment = Entertenment.find(params[:id])
	  @entertenment.update(entertenment_params)

	  flash.notice = "Article '#{@entertenment.name}' Updated!"

	  redirect_to entertenments_path
	end

	def destroy
		@entertenment = Entertenment.find(params[:id])
    @entertenment.destroy
    redirect_to entertenments_path
	end

	def show
		@entertenment = Entertenment.find(params[:id])
		@entertenments = Entertenment.all
	end


	def entertenment_params
	  params.require(:entertenment).permit(:name, :entertenment_url, :genres, :runtime, :director, :stars, :country, :description, :image, :category_id, :sub_category_id, :sorted_on)
	end
end