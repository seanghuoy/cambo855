class Category < ActiveRecord::Base
	has_many :sub_categories
	has_many :entertenments

	def self.ordered
    order(:sorted_on)
  end

	def self.permitted_params
    [:name, :description, :sorted_on]
  end
end
