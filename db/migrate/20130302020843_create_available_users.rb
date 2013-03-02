class CreateAvailableUsers < ActiveRecord::Migration
  def change
    create_table :available_users do |t|
      t.string :user_id
      t.string :event_id
      t.boolean :available
      t.boolean :not_available
      t.boolean :maybe

      t.timestamps
    end
  end
end
