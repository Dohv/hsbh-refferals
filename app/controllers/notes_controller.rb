class NotesController < ApplicationController  
  def create
    @referral = Referral.find(params[:referral_id])
    @note = @referral.notes.create(params[:note].permit(:body))
    redirect_to referral_path(@referral)
  end
end