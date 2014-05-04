class AddAncestryToRegions < ActiveRecord::Migration
  def change
    add_column :regions, :ancestry, :string
  end
end
