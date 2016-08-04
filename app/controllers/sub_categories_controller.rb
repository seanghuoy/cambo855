class SubCategoriesController < ApplicationController
	def index
		@sub_categories = SubCategory.all
	end

	def new
		@sub_category = SubCategory.new
	end
	def create
		@sub_category = SubCategory.new(sub_category_params)
		@sub_category.save
		redirect_to sub_categories_path
	end

	def edit
	  @sub_category = SubCategory.find(params[:id])
	end

	def update
	  @sub_category = SubCategory.find(params[:id])
	  @sub_category.update(sub_category_params)

	  flash.notice = "Article '#{ @sub_categoryname}' Updated!"

	  redirect_to sub_categories_path
	end

	def destroy
		@sub_category = SubCategory.find(params[:id])
    @sub_category.destroy
    redirect_to sub_categories_path
	end


	def sub_category_params
		params.require(:sub_category).permit(:name, :description, :sorted_on, :category_id)
	end
end
