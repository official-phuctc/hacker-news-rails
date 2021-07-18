require 'net/http'
require 'uri'
require 'json'

class ArticlesHelper
  def initialize
    uri = 'https://iwa-test.herokuapp.com/graphql'
    @client = Graphlient::Client.new(uri,
      http_options: {
        read_timeout: 20,
        write_timeout: 30
      }
    )
  end

  def all_articles
    @client.query <<~GRAPHQL
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
  end
end