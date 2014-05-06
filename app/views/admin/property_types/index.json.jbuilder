json.array!(@admin_property_types) do |admin_property_type|
  json.extract! admin_property_type, :id, :name
  json.url admin_property_type_url(admin_property_type, format: :json)
end
