class AddUserIdToMember < ActiveRecord::Migration
  def up
    add_column :members, :user_id, :integer
  end
  def down
    remove_column :members, :user_id
  end
end
