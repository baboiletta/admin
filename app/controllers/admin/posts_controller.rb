module Admin
  class PostsController < Admin::ApplicationController
    # Overwrite any of the RESTful controller actions to implement custom behavior
    # For example, you may want to send an email after a foo is updated.
    #
    def update
      post = Post.find(params[:id])
      post.update(post_params)
      redirect_to admin_post_path
    end

    private
      def post_params
        params.require(:post).permit(:user_id, :content, :id, :slug, :title, :author, :category_ids => [] )
      end
  end
end
