class RmoveGenre < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :genre, :integer, null: false
  end
end
