class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end
	def new
		@category = Category.new
	end

	def create
		@category = Category.new(permitted_params)
	  @category.save
	  redirect_to categories_path
	end

	def show
		@category = Category.find(params[:id])
		@entertenment_category = @category.entertenments
	end

	def edit
	  @category = Category.find(params[:id])
	end

	def update
	  @category = Category.find(params[:id])
	  @category.update(permitted_params)

	  flash.notice = "Article '#{@category.name}' Updated!"

	  redirect_to categories_path
	end

	def destroy
		@category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
	end
end
