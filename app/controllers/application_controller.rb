class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  	def model
  		controller_name.classify.constantize
  	end

  	def permitted_params
  		params.required(model.to_s.underscore.downcase.to_sym).permit(model.permitted_params)
		end
end
