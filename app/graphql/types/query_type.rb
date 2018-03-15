require 'graphql'

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :hello do
    type types.String
    resolve ->(_obj, _args, _ctx) {
      'Hello world'
    }
  end
end
