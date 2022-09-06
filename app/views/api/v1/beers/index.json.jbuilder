json.array! @beers do |beer|
  json.extract! beer, :identifier, :name, :description
end
