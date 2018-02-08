class ChangeColumnVerifiedDatatype < ActiveRecord::Migration[5.1]
  def change
    change_column :referrals, :verified, :string, default: 'pending'
  end
end
