class AddLatitudeAndLongitudeToPlots < ActiveRecord::Migration
  def change
    add_column :plots, :latitude, :float
    add_column :plots, :longitude, :float
  end
end
