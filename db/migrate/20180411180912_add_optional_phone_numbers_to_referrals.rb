class AddOptionalPhoneNumbersToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :phone_number_2, :string
    add_column :referrals, :phone_number_3, :string
  end
end
