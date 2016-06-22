class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.date   :event_date
      t.time   :event_time
      t.string :event_place
      t.string :event_contents
      t.integer :event_money
      t.integer :event_numofpeople
      t.date   :event_deadline
      t.integer :event_kanji_id

      t.timestamps null: false
    end
  end
end
