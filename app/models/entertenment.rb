class Entertenment < ActiveRecord::Base
	has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  belongs_to :category
  belongs_to :sub_category
end
