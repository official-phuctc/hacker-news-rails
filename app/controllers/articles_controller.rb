include ArticlesHelper

class ArticlesController < ApplicationController
  # GET /articles
  def index
    render json: all_articles
  end
end
