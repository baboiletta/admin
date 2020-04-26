# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin
    before_action :set_locale
    # around_action :switch_locale


    def authenticate_admin
      # TODO Add authentication logic here.
    end



    # def switch_locale(&action)
    #   locale = params[:locale] || I18n.default_locale
    #   I18n.with_locale(locale, &action)
    # end

    private
    def set_locale
      locale = params[:locale].to_s.strip.to_sym
      I18n.locale = I18n.available_locales.include?(locale) ?
      locale : I18n.default_locale
    end
    def default_url_options
      {locale: I18n.locale}
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
