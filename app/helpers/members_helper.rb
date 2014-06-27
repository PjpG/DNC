module MembersHelper
  
  def editing_background_image(member)
    if member.present?
      "background: url(" + member.cover_photo.url(:big) + ");"
    else 
      "background-color: rgba(0, 0, 0, .8);"
    end
  end
end
