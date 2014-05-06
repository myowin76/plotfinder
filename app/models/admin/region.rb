class Admin::Region < ActiveRecord::Base

	has_many :plots, :class_name => "Admin::Plot"
end
