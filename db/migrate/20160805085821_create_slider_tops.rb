class CreateSliderTops < ActiveRecord::Migration
  def change
    create_table :slider_tops do |t|
    	t.attachment :image
    	t.string :name
    	t.text :slider_url
    	t.integer :sorted_on
    	t.string :description
      t.timestamps null: false
    end
  end
end
