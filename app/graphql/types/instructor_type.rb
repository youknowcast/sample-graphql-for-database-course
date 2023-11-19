module Types
  class InstructorType < Types::BaseObject
    graphql_name 'Instructor'

    field :ID, ID, null: false
    field :name, GraphQL::Types::String, null: false
    field :department, Types::DepartmentType
  end
end