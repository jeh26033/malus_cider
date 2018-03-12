class ArticlesController < ApplicationController
  
  before_action :authenticate_user!, :except => [:show, :index]

  def index #the default landing page when someone clicks blogs, shows all articles
    @articles = Article.all
  end

  def show #page for one article
    @article = Article.find(params[:id])
  end


  
  def new #makes a new article entry, admin
    @article=Article.new
  end

  def edit #edits a blog, admin
    @article = Article.find(params[:id])
  end

  def create #creates a new blog, admin
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update #updates an existing article, admin
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy #deletes article, admin
    @article= Article.find(params[:id])

    @article.destroy
    redirect_to articles_path
  end
 
private
  def article_params
    params.require(:article).permit(:title, :text)
  end


end
