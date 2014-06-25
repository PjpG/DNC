class Member < ActiveRecord::Base
  has_attached_file :picture,
      storage: :dropbox,
      dropbox_credentials: Rails.root.join("config/dropbox.yml"),
      styles: { small: "720x560>" }

  has_attached_file :cover_photo,
      storage: :dropbox,
      dropbox_credentials: Rails.root.join("config/dropbox.yml"),
      styles: { big: "1920x1000>", small: "720x560>" }
      
  do_not_validate_attachment_file_type :cover_photo
  validates :description, presence: true, length: { maximum: 542}

  belongs_to :user
  
  def previous
    self.class.first(:conditions => ["id < ?", id], :order => "id desc")
  end

  def next
    self.class.first(:conditions => ["id > ?", id], :order => "id asc")
  end
  
  scope :with_user, where("`user_id` IS NOT NULL AND `user_id` !=''")

end
