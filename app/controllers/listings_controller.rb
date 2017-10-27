
class ListingsController < ApplicationController
before_action :authenticate

  def index
    @tags = Tag.all

    if params[:tag_id] && params[:tag_id] != "show_all"
      @listings = []
      @closed_listings = []
      @listing_tags = ListingTag.where(tag_id: params[:tag_id])
      @listing_tags.each do |listing_tag|
        listing = listing_tag.listing
        if listing.open == true
          @listings.push(listing)
        else
          @closed_listings.push(listing)
        end
      end
    else
      @listings = Listing.where(open: true)
      @closed_listings = Listing.where(open: false)
    end
  end


  def new
    @tags = Tag.all
    @listing = Listing.new
  end

  def create
    listing = Listing.new
    listing.title = params[:title]
    listing.street = params[:street]
    listing.city = params[:city]
    listing.postcode = params[:postcode]
    listing.moving_date = params[:moving_date]
    listing.moving_time = params[:moving_time]
    listing.price = params[:price]
    listing.description = params[:description]
    listing.title = params[:title]
    listing.image = params[:image]
    listing.num_helpers_needed = params[:num_helpers_needed]
    listing.creator_id = session[:user_id].to_i
    if params[:helpers] == ""
      params[:helpers] = 1
    end

    listing.image = params[:listing][:image]

    listing.num_helpers_needed = params[:helpers].to_i
    listing.open = true

    listing.save

    tags = params[:tags]
    # ?????????????????
    if tags != nil
      tags.each do |tag|
        listing_tag = ListingTag.new
        listing_tag.listing_id = listing.id.to_i
        listing_tag.tag_id = tag.to_i
        listing_tag.save
      end
    end

    redirect_to '/listings'
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def show
    @listing = Listing.find(params[:id])
    @date = String(@listing.moving_time)
    @date = @date.slice(11..15)

    @users = User.includes(:user_listings).where(user_listings: { listing_id: params[:id] })


    # if this reccord exits don't show button, if it does not exist show button
    @thisUserListing = UserListing.find_by(listing_id: params[:id], user_id: current_user.id)


    helpers_signed_up = UserListing.where(listing_id: params[:id]).count
    total_helpers_needed = @listing.num_helpers_needed
    @still_needed = total_helpers_needed - helpers_signed_up
  end

  def update
    @listing = Listing.find(params[:id])
    # redirect_to '/listings' #This can be accessed from All Listings EDIT and Dashboard EDIT. Need to find out how to go back where came from
    @listing.title = params[:title]
    @listing.street = params[:street]
    @listing.city = params[:city]
    @listing.postcode = params[:postcode]
    @listing.moving_date = params[:moving_date]
    @listing.moving_time = params[:moving_time]
    @listing.price = params[:price]
    @listing.description = params[:description]
    @listing.title = params[:title]
    @listing.image = params[:listing][:image]
    @listing.creator_id = session[:user_id].to_i
    @listing.num_helpers_needed = params[:helpers]
    @listing.save

    redirect_to session[:return_to]
  end

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy
    redirect_to session[:return_to] #This can be accessed from All Listings EDIT and Dashboard EDIT. Need to find out how to go back where came from

  end



end
