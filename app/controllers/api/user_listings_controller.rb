class Api::UserListingsController < ApplicationController
  def destroy
    @listing = Listing.find(params[:listing_id])
    thisUserListing = UserListing.find_by(listing_id: params[:listing_id], user_id: current_user.id)
    @listing.open = true
    @listing.save
    thisUserListing.destroy
    thisUserListing.save
  end
end
