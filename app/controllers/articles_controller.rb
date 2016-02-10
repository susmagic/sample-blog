class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)

    if @article.valid?
      @article.save
      redirect_to @article
    else
      #возвращаем страницу new
      render action: 'new'
    end
  end

  #сохраняем аттрибуты
  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
