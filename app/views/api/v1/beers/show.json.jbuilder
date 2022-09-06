#What attributes of a Beer will be displayed in the JSON of show method
json.extract! @beer, :identifier, :name, :description
