# frozen_string_literal: true

class ArticlesController < ApplicationController
  
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.select('title, description')
  end
  
  def new
  end
  
  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    
    redirect_to @article
  end
end