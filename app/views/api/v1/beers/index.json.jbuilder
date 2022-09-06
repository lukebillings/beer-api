#What attributes of a Beer will be displayed in the JSON of index method
json.array! @beers do |beer|
  json.extract! beer, :identifier, :name, :description
end
