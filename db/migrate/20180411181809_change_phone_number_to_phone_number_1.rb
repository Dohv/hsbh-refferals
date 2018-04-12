class ChangePhoneNumberToPhoneNumber1 < ActiveRecord::Migration[5.1]
  def change
    rename_column :referrals, :phone_number, :phone_number_1
  end
end
