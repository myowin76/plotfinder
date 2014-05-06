class Admin::Plot < ActiveRecord::Base
  belongs_to :feature, :class_name => "Admin::Feature"
  belongs_to :property_type, :class_name => "Admin::PropertyType"
  belongs_to :region, :class_name => "Admin::Region"
end
