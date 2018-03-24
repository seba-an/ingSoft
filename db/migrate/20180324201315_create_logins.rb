class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :user
      t.password :password

      t.timestamps null: false
    end
  end
end
