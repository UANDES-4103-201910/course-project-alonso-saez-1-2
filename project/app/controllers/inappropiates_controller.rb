class InappropiatesController < ApplicationController
  before_action :find_post

  def create
    if already_inappropiate?
      flash[:error] = "You can't mark a post as inappropiate more than once"
    else
      if user_signed_in?
        @post.inappropiates.create(user_id: current_user.id)
      else
        @post.inappropiates.create(user_id: user_wg.id)
      end
    end
    redirect_to post_path(@post)
  end


  private

  def already_inappropiate?
    if user_signed_in?
      Inappropiate.where(user_id: current_user.id, post_id: params[:post_id]).exists?
    else
      Inappropiate.where(user_id: user_wg.id, post_id: params[:post_id]).exists?
    end
 end

  def find_post
    @post = Post.find(params[:post_id])
  end

end
