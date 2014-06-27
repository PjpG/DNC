module MembersHelper
  
  def editing_background_image(member)
    "background: url(" + member.cover_photo.url(:big) + ");" if member.present?
  end
end
