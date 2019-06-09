class UpvotedsController < ApplicationController
  before_action :find_post

  def create
    if already_upvoted?
      flash[:error] = "You can't upvoted more than once"
    else
      if user_signed_in?
        @post.upvoteds.create(user_id: current_user.id)
      else
        @post.upvoteds.create(user_id: user_wg.id)
      end
    end
    redirect_to post_path(@post)
  end


  private

  def already_upvoted?
    if user_signed_in?
      Upvoted.where(user_id: current_user.id, post_id: params[:post_id]).exists?
    else
      Upvoted.where(user_id: user_wg.id, post_id: params[:post_id]).exists?
    end
 end

  def find_post
    @post = Post.find(params[:post_id])
  end

end
