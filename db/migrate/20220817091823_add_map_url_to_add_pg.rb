class AddMapUrlToAddPg < ActiveRecord::Migration[6.1]
  def change
    add_column :add_pgs, :map_url, :string
  end
end
