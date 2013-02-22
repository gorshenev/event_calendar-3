class CreateAvailablePlayers < ActiveRecord::Migration
  def change
    create_table :available_players do |t|
      t.string :name
      t.string :user_id
      t.string :match_id

      t.timestamps
    end
  end
end
