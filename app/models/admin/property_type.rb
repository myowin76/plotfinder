class Admin::PropertyType < ActiveRecord::Base

	has_many :plots, :class_name => "Admin::Plot"
end
