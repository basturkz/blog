class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user = current_user
    if @comment.save
	    redirect_to article_path(@article)
	else
		redirect_to @profile, notice: "did not save!"
	end

  end
 
  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
