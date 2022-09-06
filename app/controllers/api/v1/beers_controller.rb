class Api::V1::BeersController < ApplicationController
  def index
    if params[:query].present?
     @beers = Beer.where(name: params[:query])
    else
      @beers = Beer.all
    end
  end
    def show
      @beer = Beer.find(params[:id])
    end
end
