class AddCategoryToAddPg < ActiveRecord::Migration[6.1]
  def change
    add_column :add_pgs, :category, :string
  end
end
