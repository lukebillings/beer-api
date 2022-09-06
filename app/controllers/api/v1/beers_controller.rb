class Api::V1::BeersController < ApplicationController
  def index
    if params[:beer_name].present?
      #Get an index of beers if they contain the user input somewhere in the name attribute
     @beers = Beer.where("name ILIKE ?", "%#{params[:beer_name]}%")
    else
      #Get all the beers
      @beers = Beer.all
    end
  end
    def show
      #Get an individual beer
      @beer = Beer.find(params[:id])
    end
end
