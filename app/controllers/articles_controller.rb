require 'net/http'
require 'uri'
require 'json'

class ArticlesController < ApplicationController
  # GET /articles
  def index
    client = Graphlient::Client.new('https://iwa-test.herokuapp.com/graphql',
      headers: {
        'Authorization' => 'Bearer 123'
      },
      http_options: {
        read_timeout: 20,
        write_timeout: 30
      }
    )
    response = client.query <<~GRAPHQL
      query {
        articles {
          content
          coverImageUrl
          description
          subtitle
          title
          url
        }
      }
    GRAPHQL

    @articles = response.data
    render json: @articles
  end
end
