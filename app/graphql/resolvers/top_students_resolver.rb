module Resolvers
  class TopStudentsResolver < GraphQL::Schema::Resolver
    TOP_COUNT = 5.freeze

    type [Types::StudentType], null: false

    def resolve
      Student.limit(TOP_COUNT)
    end
  end
end