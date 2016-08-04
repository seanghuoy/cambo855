class CreateEntertenments < ActiveRecord::Migration
  def change
    create_table :entertenments do |t|
    	t.string :name
    	t.string :entertenment_url
    	t.string :genres
    	t.string :runtime
    	t.string :director
    	t.string :stars
    	t.string :country
    	t.text :description

      t.timestamps null: false
    end
  end
end
