require 'net/http'
require 'uri'
require 'json'

module ArticlesHelper
  def client
    uri = ENV['GRAPHQL_URL']
    Graphlient::Client.new(uri,
      http_options: {
        read_timeout: 20,
        write_timeout: 30
      }
    )
  end

  def all_articles
    client.query <<~GRAPHQL
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
