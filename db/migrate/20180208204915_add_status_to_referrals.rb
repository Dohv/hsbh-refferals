class AddStatusToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :status, :string
  end
end
