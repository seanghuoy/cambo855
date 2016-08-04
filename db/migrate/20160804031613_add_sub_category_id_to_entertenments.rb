class AddSubCategoryIdToEntertenments < ActiveRecord::Migration
  def change
    add_column :entertenments, :sub_category_id, :integer
  end
end
