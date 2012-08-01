class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to article_path(@article)
    else
      flash[:error]
      render 'new'
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:message] = "Article '#{@article.title}' Updated!"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end
  
  def destroy
    Article.find(params[:id]).destroy
    redirect_to articles_path
  end
end
