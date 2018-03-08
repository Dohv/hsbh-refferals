class CompaniesController < ApplicationController 


  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "company was created successfully"
      redirect_to new_user_registration_path
    end
  end

  private
  def company_params
    params.require(:company).permit(:name)
  end

end
