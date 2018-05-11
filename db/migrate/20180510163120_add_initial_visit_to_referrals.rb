class AddInitialVisitToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :intial_visit, :date
  end
end


