class CommentsController < ApplicationController
  
  def create
    # plugins recaptcha validation
    if verify_recaptcha
      @comment = Comment.new(params[:comment])
      if @comment.save
        flash[:notice] = "Comment was successfully created."
      else
        flash[:error] = "Comment has failed created."
      end
    else
      flash[:error] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."
    end
    @comments = Comment.find_all_by_article_id(@comment.article_id)
    render :partial => 'comments/create.js.erb'
  end
end
