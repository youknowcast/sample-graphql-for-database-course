module Resolvers
  class DepartmentsResolver < GraphQL::Schema::Resolver
    type [Types::DepartmentType], null: false

    def resolve
      Department.all
    end
  end
end