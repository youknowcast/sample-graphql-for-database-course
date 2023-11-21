module Resolvers
  class TopStudentsResolver < GraphQL::Schema::Resolver
    TOP_COUNT = 5.freeze

    type [Types::StudentType], null: false

    def resolve
      Student.order(:ID).limit(TOP_COUNT)
    end
  end
end