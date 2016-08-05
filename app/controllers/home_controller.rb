class HomeController < ApplicationController
  def index
  	@entertenment = Entertenment.all
  	@slider_tops = SliderTop.all
  end

  def show
		@entertenment = Entertenment.find(params[:id])
	end
end
