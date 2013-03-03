class CreateAvailableUsers < ActiveRecord::Migration
  def change
    create_table :available_users do |t|
      t.string :user_id
      t.string :name
      t.string :event_id
      t.string :user_name

      t.timestamps
    end
  end
end
