class AddImagePathToSliderTop < ActiveRecord::Migration
  def change
    add_column :slider_tops, :image_path, :text
  end
end
