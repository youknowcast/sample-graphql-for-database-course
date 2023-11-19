# frozen_string_literal: true

module Types
  class BaseConnection < Types::BaseObject
    # add `nodes` and `pageInfo` fields, as well as `edge_type(...)` and `node_nullable(...)` overrides
    include GraphQL::Types::Relay::ConnectionBehaviors

    # see: https://graphql-ruby.org/type_definitions/extensions#customizing-connections
    field :total_count, Integer, null: false

    def total_count
      object.items&.count || 0
    end
  end
end
