class ArticleController < ApplicationController
  def index
    @articles=Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      put "save"
      redirect_to @article
    else
      put "new"
      render :new
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
      render :edit
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
