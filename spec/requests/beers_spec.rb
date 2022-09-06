require 'rails_helper'


describe 'Beers API', type: :request do
  describe 'GET /beers' do
    it 'returns ALL beers' do
      # FactoryBot.create(:beer, identifier: 1, name: "Example Beer name" , description: "This is an example of a beer that will be returned by your API")
      # FactoryBot.create(:beer, identifier: 2, name: "Example Beer name 2" , description: "This is another example of a beer that will be returned by your API")
      get '/api/v1/beers'
      #checking response status is 200
      expect(response).to have_http_status(:success)
      #check response gets back all records that are in API (using Factory Bot for test data)
      expect(JSON.parse(response.body).size).to eq(2)
    end
  end
  # describe 'GET /beers' do
  #   it 'returns a beer for a given ID' do
  #     get '/api/v1/beers', params: { beer: { id: 1 } }
  #     #checking response status is 200
  #     expect(response).to have_http_status(:success)
  #     #check response gets back all records that are in API (using Factory Bot for test data)
  #     expect(JSON.parse(response.body).size).to eq(1)
  #   end
  # end
  # describe 'GET /beers' do
  #   it 'returns all beers for a given name' do
  #     get '/api/v1/beers', params: { beer: {name: "Example"} }
  #           #checking response status is 200
  #     expect(response).to have_http_status(:success)
  #     #check response gets back all records that are in API (using Factory Bot for test data)
  #     expect(JSON.parse(response.body).size).to eq(2)
  #   end
  # end
end

