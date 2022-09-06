class Api::V1::BeersController < ApplicationController
  def index
    if params[:beer_name].present?
     @beers = Beer.where("name ILIKE ?", "%#{params[:beer_name]}%")
    else
      @beers = Beer.all
    end
  end
    def show
      @beer = Beer.find(params[:id])
    end
end
