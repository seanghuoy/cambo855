class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
	  @category.save
	  redirect_to categories_path
	end

	def edit
	  @category = Category.find(params[:id])
	end

	def update
	  @category = Category.find(params[:id])
	  @category.update(category_params)

	  flash.notice = "Article '#{@category.name}' Updated!"

	  redirect_to categories_path
	end

	def destroy
		@category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
	end


	def category_params
	  params.require(:category).permit(:name, :description, :sorted_on)
	end
	
end
