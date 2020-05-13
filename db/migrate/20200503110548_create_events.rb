class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title,        null: false
      t.string :body,         null: false
      t.datetime :start_date, null: false
      t.datetime :end_date,   null: false
      t.references :user,     foreign_key: true
      t.timestamps
    end
  end
end
