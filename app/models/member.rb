class Member < ActiveRecord::Base
  has_attached_file :picture,
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end
