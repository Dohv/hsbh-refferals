class AddDateOfBirthToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :date_of_birth, :date
  end
end
