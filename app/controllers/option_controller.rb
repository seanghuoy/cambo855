class OptionController < ApplicationController 

	def get_sub_categories
    @category = Category.find_by_id(params[:cat_id])
    if @category
      @sub_categories = @category.sub_categories
      render :json => @sub_categories
    end
  end

end