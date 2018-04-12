class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page], per_page: 15) 
  end

  def show
    @user = User.find(params[:id])
    @user_referrals = @user.referrals.paginate(page: params[:page], per_page: 15).order("created_at DESC")
  end
end