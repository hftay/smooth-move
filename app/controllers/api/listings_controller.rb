class Api::ListingsController < ApplicationController

  def create
    new_helper = UserListing.new
    new_helper.user_id = current_user.id
    new_helper.listing_id = params[:listing_id]
    new_helper.save
    # do calculation
    helpers_signed_up = UserListing.where(listing_id: params[:listing_id]).count
    total_helpers_needed = Listing.find(params[:listing_id]).num_helpers_needed
    still_needed = total_helpers_needed - helpers_signed_up

    if still_needed == 0
      Listing.find(params[:listing_id]).open = false
    end
    render json: { still_needed: still_needed }
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
    render json: { new_number: listing.num_helpers_needed }
  end
  def destroy
    @listing = Listing.find(params[:listing_id])
    thisUserListing = UserListing.where(listing_id: params[:listing_id], user_id: current_user.id)
    @listing.open = true
    thisUserListing.destroy
    thisUserListing.save
  end
end
