class ReferralsController < ApplicationController

  def index
    @referrals = Referral.paginate(page: params[:page], per_page: 15)
  end

  def update
    @referral = Referral.find(params[:id])
    if @referral.update(referral_params)
      flash[:success] = "Referral was succesfully updated"
      redirect_to referral_path(@referral)
    else
      render 'edit'
    end
    
  end

  def new
    @referral = Referral.new
  end

  def create
    @referral = Referral.new(referral_params)
    @referral.user = current_user
    if @referral.save
      flash[:success] = "Referral was succesfully created"
      redirect_to referral_path(@referral)
    else
      render 'new'
    end
  end

  def show
    @referral = Referral.find(params[:id])
  end

  def edit 
    @referral = Referral.find(params[:id])
  end

  
    
  private
    def referral_params
      params.require(:referral).permit(:first_name, :last_name, :ssn, :medicare_id, :phone_number, :verified, :status)
    end

    def require_same_user
      if current_user != @referral.user and current_user.role != 0 
        flash[:danger] = "You can only edit your own referrals"
        redirect_to root_path
      end
    end
end