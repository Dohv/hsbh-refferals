class ChangeCompanyNameToUserName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :company_name, :user_name
  end
end
