class AddPictureColumnsToMembers < ActiveRecord::Migration
  
  def self.up
    add_attachment :members, :picture 
  end
  
  def self.down
    remove_attachment :members, :picture
  end
end
