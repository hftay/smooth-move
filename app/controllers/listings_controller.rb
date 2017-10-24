class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new

  end

  def create

    redirect_to '/listings'
  end

  def show
    @listing = Listing.find(params[:id])
  end

end
