class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.string :role
      t.text :description
      t.string :user_id

      t.timestamps
    end
  end
end
