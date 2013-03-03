class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.date :event_date
      t.datetime :start_at
      t.datetime :end_at
      t.text :event_description
      t.string :user_id

      t.timestamps
    end
  end
end
