class ChangeMedicareIdToInsuranceId1 < ActiveRecord::Migration[5.1]
  def change
    rename_column :referrals, :medicare_id, :insurance_id_1
  end
end
