module Resolvers
  class StudentsResolver < GraphQL::Schema::Resolver
    type Types::StudentType.connection_type, null: false

    def resolve
      Student.includes(:instructor).all
    end
  end
end