class CreateBannedUsers < ActiveRecord::Migration
  def change
    create_table :banned_users do |t|
      t.string :user_id
      t.string :email

      t.timestamps
    end
  end
end
