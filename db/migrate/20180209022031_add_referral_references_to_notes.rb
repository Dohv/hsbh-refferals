class AddReferralReferencesToNotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :notes, :referral, foreign_key: true
  end
end
