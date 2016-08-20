class SubCategoriesController < ApplicationController
	def index
		@sub_categories = SubCategory.all
	end

	def new
		@sub_category = SubCategory.new
	end
	def create
		@sub_category = SubCategory.new(permitted_params)
		@sub_category.save
		redirect_to sub_categories_path
	end

	def edit
	  @sub_category = SubCategory.find(params[:id])
	end

	def update
	  @sub_category = SubCategory.find(params[:id])
	  @sub_category.update(permitted_params)

	  flash.notice = "Article '#{ @sub_categoryname}' Updated!"

	  redirect_to sub_categories_path
	end

	def show
		@sub_category = SubCategory.find(params[:id])
		@entertenment_sub_category = @sub_category.entertenments
	end

	def destroy
		@sub_category = SubCategory.find(params[:id])
    @sub_category.destroy
    redirect_to sub_categories_path
	end
end
