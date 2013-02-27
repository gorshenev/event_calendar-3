class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :event_date
      t.string :event_start_time
      t.string :event_end_time
      t.text :event_description
      t.string :user_id

      t.timestamps
    end
  end
end
