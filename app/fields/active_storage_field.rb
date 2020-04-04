require "administrate/field/base"

class ActiveStorageField < Administrate::Field::Base
  def to_s
    data
  end

  def gravatar_url
    "http://www.gravatar.com/avatar/#{data}"
  end

  # def avatar_url
  #   data.url
  # end

  # def show_in_index?
  #   options.fetch(:show_in_index, false)
  # end

  # def url_only?
  #   options.fetch(:url_only, false)
  # end

  # def blob_url(attachment)
  #   Rails.application.routes.url_helpers.rails_blob_path(attachment, disposition: :attachment, only_path: true)
  # end

  # def url(attachment)
  #   Rails.application.routes.url_helpers.rails_blob_path(attachment, only_path: true)
  # end

  # def variant(attachment, options)
  #   Rails.application.routes.url_helpers.rails_representation_path(attachment.variant(combine_options: options), only_path: true)
  # end
end
