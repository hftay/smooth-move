
class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new

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
    listing.creator_id = session[:user_id].to_i
    listing.num_helpers_needed = params[:helpers]
    listing.open = true

    listing.save

    redirect_to '/listings'
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def show
    @listing = Listing.find(params[:id])
    @date = String(@listing.moving_time)
    @date = @date.slice(11..15)
  end

  def update

    # redirect_to '/listings' #This can be accessed from All Listings EDIT and Dashboard EDIT. Need to find out how to go back where came from

    redirect_to session[:return_to]
  end

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy
    redirect_to session[:return_to] #This can be accessed from All Listings EDIT and Dashboard EDIT. Need to find out how to go back where came from

  end

end
