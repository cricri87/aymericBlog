class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy, :edit]

  def index
    @articles = Article.all

  end

  def show
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def destroy
  end

#   def article_params
#   params.require(:article).permit(:title, :body, :photo)
# end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text, :photo)
  end
end
