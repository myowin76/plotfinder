class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :title
      t.integer :price, :limit => 8
      t.references :feature, index: true
      t.references :property_type, index: true
      t.references :region, index: true
      t.string :address1
      t.string :address2
      t.string :town
      t.string :postcode

      t.timestamps
    end
  end
end
