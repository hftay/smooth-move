class UsersController < ApplicationController
  before_action :authenticate
  def create
  	@user = User.new
		@user.name = params[:name]
		@user.email = params[:email]
		@user.password = params[:password]
    @user.image = params[:user][:image]
		@user.save
    redirect_to '/login'
  end
end
