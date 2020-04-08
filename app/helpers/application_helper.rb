module ApplicationHelper
  def avatar_url(attachment)
    Rails.application.routes.url_helpers.rails_blob_path(attachment, only_path: true)
  end

  def user_avatar(user, size=40)
    if user.avatars.attached?
      variant(user.avatars.first,resize: "#{size}x#{size}!" )
    else
       gravatar_image_url(user.email, size: size)
    end
  end

  def variant(attachment, options)
    Rails.application.routes.url_helpers.rails_representation_path(attachment.variant(combine_options: options), only_path: true)
  end

end
