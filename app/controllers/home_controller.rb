class HomeController < ApplicationController
  def index
  	@entertenment = Entertenment.all
  end
end
