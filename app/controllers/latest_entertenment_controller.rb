class LatestEntertenmentController < ApplicationController
  def index
		@latest_entertenment = Entertenment.all
	end
end
