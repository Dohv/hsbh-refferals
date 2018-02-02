class ReferralsController < ApplicationController

  def index
    @referrals = Referral.all
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
      flash[:notice] = "Referral was succesfully created"
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
      params.require(:referral).permit(:first_name, :last_name, :ssn, :medicare_id, :phone_number)
    end
end