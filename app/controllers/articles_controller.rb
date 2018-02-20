class ArticlesController < ApplicationController
 before_action :find_article, only: [:edit, :update, :show, :delete]

  def new
  	@article=Article.new
  end

  def create
  	#creates a new article
  	@article= Article.new

  	@article.save
  	redirect_to @article
  end

  def index
  	@article = Article.all
  end

  def show
  	#finds an article
  	@article= Article.find(params[:id])
  end

  private

  def article_params
  	#strong paramaters
  	params.require(:article).permit(:title, :text)
  end
end
