class SliderTop < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "400x400", thumb: "200x200" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]


	def self.ordered
    order(:sorted_on)
  end
  
	def self.permitted_params
    [:name, :slider_url, :sorted_on, :description, :image]
  end
end
