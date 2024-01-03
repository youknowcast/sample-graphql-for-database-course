module Resolvers
  class StudentByIdResolver < GraphQL::Schema::Resolver
    type Types::StudentType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Student.find(id)
    end
  end
end