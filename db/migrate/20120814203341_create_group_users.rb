class CreateGroupUsers < ActiveRecord::Migration
  def change
    create_table :group_users do |t|
      t.references :group
      t.references :user
      t.timestamp
    end
  end
end
