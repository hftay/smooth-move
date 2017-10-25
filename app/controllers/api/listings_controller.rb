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
    listing = Listing.find(params[:id])
    listing.num_helpers_needed -= 1
    if listing.num_helpers_needed == 0
      listing.open = false
    end
    listing.save
    render json: { new_number: new_number }
  end
  def destroy
    @listing = Listing.find(params[:id])
  end

end
