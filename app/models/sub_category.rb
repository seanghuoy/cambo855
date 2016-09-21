class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :entertenments

	def self.ordered
    order(:sorted_on)
  end
  
	def self.permitted_params
    [:name, :description, :sorted_on, :category_id]
  end
end
