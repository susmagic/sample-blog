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

    if @article.save
      redirect_to @article
    else
      #возвращаем страницу new
      render action: 'new'
    end

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      #возвращаем страницу edit
      render action: 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  #сохраняем аттрибуты
  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
