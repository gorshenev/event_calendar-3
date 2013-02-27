class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.date :event_date
      t.time :event_start_time
      t.time :event_end_time
      t.text :event_description
      t.string :user_id

      t.timestamps
    end
  end
end
