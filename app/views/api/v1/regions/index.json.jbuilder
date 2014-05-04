json.array!(@admin_regions) do |admin_region|
  json.extract! admin_region, :id, :name
  json.url admin_region_url(admin_region, format: :json)
end
