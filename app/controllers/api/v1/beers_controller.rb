class Api::V1::BeersController < ApplicationController
  def index
    @beers = Beer.all
  end
end
