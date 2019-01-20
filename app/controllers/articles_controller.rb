class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dustinDunes", password: ENV["BLOG_SECRET_KEY"], except: [:index, :show]
  
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  private def article_params
    params.require(:article).permit(:title, :text)
  end
end
