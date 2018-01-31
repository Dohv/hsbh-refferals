class CreateReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :referrals do |t|
      t.string :first_name
      t.string :last_name
      t.string :ssn
      t.string :medicare_id
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end


