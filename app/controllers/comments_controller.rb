class CommentsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create]

  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)

    redirect_to @article
  end

  private

  def comment_params
    #require требует наличия параметра - comment
    #permit ставит ограничения по свойствам
    params.require(:comment).permit(:author, :body)
  end

end
