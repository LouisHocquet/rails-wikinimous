class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @count = Article.count
  end
end
