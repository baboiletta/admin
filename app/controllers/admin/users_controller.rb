module Admin
  class UsersController < Admin::ApplicationController
    # Overwrite any of the RESTful controller actions to implement custom behavior
    # For example, you may want to send an email after a foo is updated.
    # #
    # def index
    #   super
    #   @resources = User.with_attached_avatar.
    #     page(params[:page]).
    #     per(10)
    # end

    # def remove_attachment
    #   attachment = ActiveStorage::Attachment.find(params[:attachment_id])
    #   attachment.purge
    #   redirect_back(fallback_location: "/")
    # end

    # def remove_attachment
    #   attachment = ActiveStorage::Attachment.find(params[:attachment_id])
    #   attachment.purge
    #   redirect_back(fallback_location: "/")
    # end
    # # def create
    #   images = params[:user][:image]

    #   success = true
    #   images.each do |img|
    #     resource = resource_class.new(image: img, event_id: resource_params[:event_id])
    #     success &&= resource.save
    #   end

    #   if success
    #     redirect_to(
    #       admin__path
    #     )
    #   else
    #     render :new, locals: {
    #       page: Administrate::Page::Form.new(dashboard, resource),
    #     }
    #   end
    # end

    # def update
    #   super
    #   send_foo_updated_email(requested_resource)
    # end

    # Override this method to specify custom lookup behavior.
    # This will be used to set the resource for the `show`, `edit`, and `update`
    # actions.
    #
    # def find_resource(param)
    #   Foo.find_by!(slug: param)
    # end

    # The result of this lookup will be available as `requested_resource`

    # Override this if you have certain roles that require a subset
    # this will be used to set the records shown on the `index` action.
    #
    # def scoped_resource
    #   if current_user.super_admin?
    #     resource_class
    #   else
    #     resource_class.with_less_stuff
    #   end
    # end

    # Override `resource_params` if you want to transform the submitted
    # data before it's persisted. For example, the following would turn all
    # empty values into nil values. It uses other APIs such as `resource_class`
    # and `dashboard`:
    #
    # def resource_params
    #   params.require(resource_class.model_name.param_key).
    #     permit(dashboard.permitted_attributes).
    #     transform_values { |value| value == "" ? nil : value }
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
