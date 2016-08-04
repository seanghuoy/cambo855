class AddCategoryIdToEntertenments < ActiveRecord::Migration
  def change
    add_column :entertenments, :category_id, :integer
  end
end
