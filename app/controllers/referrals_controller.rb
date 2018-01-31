class ReferralsController < ApplicationController
  def new
    @referral = Referral.new
  end

  def create
    @referral = Referral.new(referral_params)
    @referral.save
    redirect_to referral_path(@referral)
  end
    
  private
    def referral_params
      params.require(:referral).permit(:first_name, :last_name, :ssn, :medicare_id, :phone_number)
    end
end