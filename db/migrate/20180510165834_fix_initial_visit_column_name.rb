class FixInitialVisitColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :referrals, :intial_visit, :initial_visit
  end
end
