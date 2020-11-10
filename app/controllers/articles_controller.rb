class ArticlesController < ApplicationController
  before_action :new_article, only: [:new, :create]
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  # @article = Article.find(params[:id])
  def show; end

  # @article = Article.new
  def new; end

  def create
    # @article = Article.new(article_params)
    # @article.save
    # replaced the above two lines after adding new_article
    @article.update(article_params)
    redirect_to articles_path
  end

  # @article = Article.find(params[:id])
  def edit; end

  def update
    # @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    # @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def new_article
    @article = Article.new
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
