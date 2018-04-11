class AddInsuranceNamesToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :insurance_name_1, :string
    add_column :referrals, :insurance_name_2, :string
    add_column :referrals, :insurance_name_3, :string
  end
end
