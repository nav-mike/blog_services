require 'graphql/client'
require 'graphql/client/http'

module Graphql
  class Common
    class << self
      def build_client(endpoint)
        http = GraphQL::Client::HTTP.new endpoint
        schema = GraphQL::Client.load_schema http
        GraphQL::Client.new schema: schema, execute: http
      end

      def client
        make_client
      end

      def make_client
        raise 'Not implemented yet!'
      end

      def query(q, options = {})
        client.query q, options
      end
    end
  end

  class Comments < Common
    class << self
      def make_client
        build_client Rails.configuration.comments_endpoint
      end
    end
  end

  class Posts < Common
    class << self
      def make_client
        build_client Rails.configuration.posts_endpoint
      end
    end
  end
end
