class Api::ListingsController < ApplicationController

  def create
    new_helper = UserListing.new
    new_helper.user_id = current_user.id
    new_helper.listing_id = params[:listing_id]
    new_helper.save
    # do calculation
    helpers_signed_up = UserListing.where(listing_id: params[:listing_id]).count
    listing = Listing.find(params[:listing_id])
    total_helpers_needed = listing.num_helpers_needed
    still_needed = total_helpers_needed - helpers_signed_up
    #close if at zero
    users = User.includes(:user_listings).where(user_listings: { listing_id: params[:listing_id] })
    if still_needed == 0
      listing.open = false
    end
    listing.save
    render json: { still_needed: still_needed, users:users }
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
  end
  def destroy
    @listing = Listing.find(params[:listing_id])
    @listing.destroy
  end
end
