# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

  response = RestClient.get 'https://api.punkapi.com/v2/beers'

  json = JSON.parse(response)

  json.each do |beer|
    puts 'creating a beer'
    Beer.create!(identifier: beer['id'], name: beer['name'], description: beer['description'])
  end
