class Entertenment < ActiveRecord::Base
	has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  belongs_to :category
  belongs_to :sub_category

  # def self.popular_entertenments
  #   most_hit(nil)
  # end

  def self.permitted_params
    [:name, :entertenment_url, :genres, :runtime, :director, :stars, :country, :description, :image, :image_path, :category_id, :sub_category_id, :sorted_on]
  end
end
