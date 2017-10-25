class Api::ListingsController < ApplicationController

  def create
  end
  def index
    @listings = Listing.all
  end
  def new
  end
  def show
    @listings = Listing.all
  end
  def edit
    @listing = Listing.find(params[:id])
  end
  def update
    @listing = Listing.find(params[:id])
  end
  def destroy
    @listing = Listing.find(params[:id])
  end

end
