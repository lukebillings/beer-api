# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

#uncomment line by line and run rails db:seed (do this 5 times), will get all data from api (325 results)

  # response = RestClient.get 'https://api.punkapi.com/v2/beers?page=1&per_page=80'
  # response = RestClient.get 'https://api.punkapi.com/v2/beers?page=2&per_page=80'
  # response = RestClient.get 'https://api.punkapi.com/v2/beers?page=3&per_page=80'
  # response = RestClient.get 'https://api.punkapi.com/v2/beers?page=4&per_page=80'
  # response = RestClient.get 'https://api.punkapi.com/v2/beers?page=5&per_page=80'

  json = JSON.parse(response)

  json.each do |beer|
    puts 'creating a beer'
    Beer.create!(identifier: beer['id'], name: beer['name'], description: beer['description'])
  end

