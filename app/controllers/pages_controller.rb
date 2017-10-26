class PagesController < ApplicationController
  def login

  end
  def dashboard
    @my_listings_all = Listing.where(creator_id: current_user)
    @my_listings = @my_listings_all.where(open: true)
    @listings_helping = current_user.listings
  end
  def edit
    @listing = Listing.find(params[:id])
  end

  def index

  end
  def logout

    session.delete('user_id')
    redirect_to '/'
  end

  def validate_logon

    user = User.find_by_email(params[:email])
    if user != nil
      user.valid_password?(params[:password])
    end

    if user && user.valid_password?(params[:password])
      session[:user_id] = user.id
      redirect_to '/listings'
    else
      @message = 'Incorrect email or password'
      render 'login'
    end

  end

  def signup
    @user = User.new
  end

end
