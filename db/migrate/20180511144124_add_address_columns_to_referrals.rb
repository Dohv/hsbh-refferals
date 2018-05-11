class AddAddressColumnsToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :street1, :string
    add_column :referrals, :street2, :string
    add_column :referrals, :city, :string
    add_column :referrals, :state, :string
    add_column :referrals, :zip_code, :string
  end
end
