class Member < ActiveRecord::Base
  has_attached_file :picture,
      storage: :dropbox,
      dropbox_credentials: Rails.root.join("config/dropbox.yml")

  has_attached_file :cover_photo,
      storage: :dropbox,
      dropbox_credentials: Rails.root.join("config/dropbox.yml"),
      styles: { big: "1920x1000>", small: "720x560>" }
end
