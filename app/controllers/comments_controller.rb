class CommentsController < ApplicationController
  def create
    comment = Comment.create(text: comment_params[:text], information_id: comment_params[:information_id], user_id: current_user.id)
    redirect_to "/informations/#{comment.information.id}" 
  end

  private
  def comment_params
    params.permit(:text, :information_id)
  end
end
