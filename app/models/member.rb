class Member < ActiveRecord::Base
  has_attached_file :picture,
      storage: :dropbox,
      dropbox_credentials: Rails.root.join("config/dropbox.yml")

  has_attached_file :cover_photo,
      storage: :dropbox,
      dropbox_credentials: Rails.root.join("config/dropbox.yml"),
      styles: { big: "1920x1000>", small: "720x560>" }
      
  do_not_validate_attachment_file_type :cover_photo

  def previous
    self.class.first(:conditions => ["id < ?", id], :order => "id desc")
  end

  def next
    self.class.first(:conditions => ["id > ?", id], :order => "id asc")
  end

end
