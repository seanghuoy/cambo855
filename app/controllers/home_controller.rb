class HomeController < ApplicationController
  def index
  	@slider_tops = SliderTop.all
  end

  def show
		@entertenment = Entertenment.find(params[:id])
	end
end
