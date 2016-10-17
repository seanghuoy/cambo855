class AddImagePathToEntertenment < ActiveRecord::Migration
  def change
    add_column :entertenments, :image_path, :text
  end
end
