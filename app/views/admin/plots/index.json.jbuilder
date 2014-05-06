json.array!(@admin_plots) do |admin_plot|
  json.extract! admin_plot, :id, :title, :price, :features_id, :property_types_id, :regions_id, :address1, :address2, :town, :postcode
  json.url admin_plot_url(admin_plot, format: :json)
end
