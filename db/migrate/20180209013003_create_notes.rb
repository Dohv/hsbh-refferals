class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :referral_id

      t.timestamps
    end
  end
end
