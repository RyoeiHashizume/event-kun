class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name, null: false
      t.date   :event_date, null: false
      t.time   :event_time, null: false
      t.string :event_place, null: false
      t.string :event_contents, null: false
      t.integer :event_money, null: false
      t.integer :event_numofpeople, null: false
      t.date   :event_deadline, null: false
      t.integer :event_kanji_id, null: false

      t.timestamps null: false
    end
  end
end
