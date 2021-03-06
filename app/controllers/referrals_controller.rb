class ReferralsController < ApplicationController

  def index
    if current_user.role == 1
      @referrals = Referral.where.not(status: "Draft").where.not(status: "Delete").order("created_at DESC") 
    elsif current_user.role == 2
      @referrals = Referral.where.not(status: "Delete").order("created_at DESC")
    else
      @referrals = Referral.order("created_at DESC")
     end
  end

  def update
    @referral = Referral.find(params[:id])
    if @referral.update(referral_params)
      flash[:success] = "Referral was succesfully updated"
      redirect_to referrals_path
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
      redirect_to edit_referral_path(@referral)
    else
      render 'new'
    end
  end

  def createAndUpdate
    @referral = Referral.new(referral_params)
    @referral.user = current_user
    if @referral.save
      flash[:success] = "Referral was succesfully created"
      redirect_to edit_referral_path(@referral)
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

  def search
    if params[:search_param].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      @referrals = Referral.search(params[:search_param])
      flash.now[:danger] = "No referrals match this search criteria" if @referrals.blank?
    end
    respond_to do |format|
      format.js { render partial: 'referrals/result' }
    end
  end

  
    
  private
    def referral_params
      params.require(:referral).permit(:first_name, :last_name, :date_of_birth, :street1, :street2, :city, :state, :zip_code, :ssn, :insurance_id_1, :insurance_id_2, :insurance_id_3, :insurance_name_1, :insurance_name_2, :insurance_name_3, :phone_number_1, :phone_number_2, :phone_number_3, :verified, :status, :initial_visit)
    end

    def note_params
      params.require(:note).permit(:body, :author, :date)
    end

    def require_same_user
      if current_user != @referral.user and current_user.role != 0 
        flash[:danger] = "You can only edit your own referrals"
        redirect_to root_path
      end
    end
end