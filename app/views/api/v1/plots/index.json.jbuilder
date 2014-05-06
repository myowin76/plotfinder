json.array! @plots do |plot|
  json.title plot.title

  json.address1 plot.address1
  json.address2 plot.address2
  json.town plot.town
  json.postcode plot.postcode

  json.property_type plot.property_type.name
  json.region plot.region.name
  json.latitude plot.latitude
  json.longitude plot.longitude
  json.url url_for(plot)
end
