require 'articles_helper'

class ArticlesController < ApplicationController
  # GET /articles
  def index
    articles_helper = ArticlesHelper.new
    render json: articles_helper.all_articles
  end
end
