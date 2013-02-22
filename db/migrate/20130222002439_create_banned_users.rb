class CreateBannedUsers < ActiveRecord::Migration
  def change
    create_table :banned_users do |t|
      t.string :ip_address
      t.string :facebook_id

      t.timestamps
    end
  end
end
