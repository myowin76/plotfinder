json.array!(@admin_features) do |admin_feature|
  json.extract! admin_feature, :id, :name
  json.url admin_feature_url(admin_feature, format: :json)
end
