
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
    listing.image 
    redirect_to '/listings'
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def update

    # redirect_to '/listings' #This can be accessed from All Listings EDIT and Dashboard EDIT. Need to find out how to go back where came from

    redirect_to session[:return_to]
  end

  def destroy

    redirect_to session[:return_to] #This can be accessed from All Listings EDIT and Dashboard EDIT. Need to find out how to go back where came from

  end

end
