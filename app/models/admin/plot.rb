class Admin::Plot < ActiveRecord::Base
  belongs_to :feature, :class_name => "Admin::Feature"
  belongs_to :property_type, :class_name => "Admin::PropertyType"
  belongs_to :region, :class_name => "Admin::Region"


  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?


  def region_name(id)
    Admin::Region.find_by_id(id).name unless id.nil?
  end

  def full_address
    [address1, address2 town, postcode, region_name(region_id)].compact.join(', ')
    # TO DO
  end
end
