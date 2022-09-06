json.array! @beers do |beer|
  json.extract! beer, :id, :identifier, :name, :description
end
