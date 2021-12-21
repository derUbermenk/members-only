class RenameUsersToMembers < ActiveRecord::Migration[6.1]
  def self.up
    rename_table :users, :members
  end

  def self.down
    rename_table :members, :users
  end
end
