class Api::V1::BeersController < ApplicationController
  def index
    if params[:name].present?
     @beers = Beer.where(name: params[:name])
    else
      @beers = Beer.all
    end
  end
    def show
      @beer = Beer.find(params[:id])
    end
end
