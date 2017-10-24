class PagesController < ApplicationController
  def login

  end
  def dashboard
    @listings = Listing.all # where user is logged on user

  end
  def edit
    @listing = Listing.find(params[:id])
  end

  def index

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
end
