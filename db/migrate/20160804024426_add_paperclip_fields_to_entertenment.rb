class AddPaperclipFieldsToEntertenment < ActiveRecord::Migration
  def change
  	add_column :entertenments, :image_file_name,    :string
    add_column :entertenments, :image_content_type, :string
    add_column :entertenments, :image_file_size,    :integer
    add_column :entertenments, :image_updated_at,   :datetime
  end
end
