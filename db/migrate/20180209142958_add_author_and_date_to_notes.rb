class AddAuthorAndDateToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :author, :string
    add_column :notes, :date, :string
  end
end
