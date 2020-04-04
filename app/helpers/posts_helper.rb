module PostsHelper
  def create_new_post_partial_path
    if user_signed_in?
      'posts/signed_in'
    else
      'posts/not_signed_in'
    end
  end

  def all_categories_button_partial_path
    if params[:category].blank?
      'posts/branch/categories/all_selected'
    else
      'posts/branch/categories/all_not_selected'
    end
  end

  def no_posts_partial_path
    @posts.empty? ? 'posts/no_posts' : 'shared/empty_partial'
  end
end
