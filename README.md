# README

External API

Get a Single Beer
http://localhost:3000/api/v1/beers/:id

GET
http://localhost:3000/api/v1/beers

GET all beers for a given name
PARAM
beer_name
e.g.
http://localhost:3000/api/v1/beers?beer_name=IPA

***************

How To Run
bundle install
rails db:create
rails db:migrate
rails db:seed
rails s

***************

Testing

I've tried the following to test the api.

Postman (all user stories work) ,
Curl in terminal (all user stories work) e.g;
  curl -s http://localhost:3000/api/v1/beers | jq
  curl -s http://localhost:3000/api/v1/beers/1 | jq
  curl -s http://localhost:3000/api/v1/beers?beer_name=IPA | jq
RSPEC (could only get a test for 'get ALL beers' working with FactoryBot data

***************

Extra question:
What happens if in a couple of months, we are asked to get beers from 2 different external APIs? What would we have to change?)

I think we would have to add another method to map for each new API as the new API's JSON keys may be different from the PUNK API's.
