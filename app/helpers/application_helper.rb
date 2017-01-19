module ApplicationHelper

  def user_avatar(user, size = :medium)
    if user.avatar.present?
      image_tag(current_user.avatar.url(size))
    else
      image_tag('placeholder.png', size: '180x180')
    end
  end

end
