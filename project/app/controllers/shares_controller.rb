class SharesController < ApplicationController
  before_action :find_post

  def create
    if already_upvoted?
      flash[:notice] = "You can't share a post more than once"
    else
      if user_signed_in?
        @post.shares.create(user_id: current_user.id)
      else
        @post.shares.create(user_id: user_wg.id)
      end
    end
    redirect_to post_path(@post)
  end


  private

  def already_upvoted?
    if user_signed_in?
      Share.where(user_id: current_user.id, post_id: params[:post_id]).exists?
    else
      Share.where(user_id: user_wg.id, post_id: params[:post_id]).exists?
    end
 end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
