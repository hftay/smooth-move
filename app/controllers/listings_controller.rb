
class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new

  end

  def create

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
