class AddCoverPhotoColumnsToMembers < ActiveRecord::Migration
  def self.up
    add_attachment :members, :cover_photo
  end
  
  def self.down
    remove_attachment :members, :cover_photo
  end
end
