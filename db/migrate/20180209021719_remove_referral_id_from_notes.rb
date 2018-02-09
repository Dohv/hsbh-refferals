class RemoveReferralIdFromNotes < ActiveRecord::Migration[5.1]
  def change
    remove_column :notes, :referral_id, :integer
  end
end
