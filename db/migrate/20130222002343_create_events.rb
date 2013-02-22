class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :user_id
      t.string :match_id
      t.string :match_title
      t.datetime :match_date
      t.datetime :match_time
      t.datetime :event_created_at
      t.datetime :event_updated_at
      t.string :match_desc

      t.timestamps
    end
  end
end
