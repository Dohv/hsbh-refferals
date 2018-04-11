class AddMoreInsuranceIdsToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :insurance_id_2, :string
    add_column :referrals, :insurance_id_3, :string
  end
end
