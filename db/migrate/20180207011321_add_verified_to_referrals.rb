class AddVerifiedToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :verified, :boolean, default: false
  end
end
