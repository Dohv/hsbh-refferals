class NotesController < ApplicationController  
  # def create
  #   @referral = Referral.find(params[:referral_id])
  #   @note = @referral.notes.desc.create(params[:note].permit(:body, :author, :date))
  #   redirect_to referral_path(@referral)
  # end

  def new
    @note = Note.new
  end

  def create
    @referral = Referral.find(params[:referral_id])
    @note = @referral.notes.new(note_params)
    if @note.save
      flash[:success] = "Note was succesfully created"
      redirect_to referral_path(@referral)
    else
      flash[:danger] = "Note was not created"
      redirect_to referral_path(@referral)
    end
  end

  def show
    @referral = Referral.find(params[:referral_id])
    @referral_notes = @referral.notes.order(id: :desc)
    render @referral.notes.order(id: :desc)
  end

  private
  def note_params
    params.require(:note).permit(:body, :author, :date)
  end

end