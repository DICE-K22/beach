class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @time = Time.now.strftime('%d %b %H:%M')
    @user = current_user.username
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', user: @user, content: @comment, time: @time
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, review_id: params[:review_id])
  end

end
