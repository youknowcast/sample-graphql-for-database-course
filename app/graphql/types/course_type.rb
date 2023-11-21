module Types
  class CourseType < Types::BaseObject
    graphql_name 'Course'

    field :title, GraphQL::Types::String, null: false
    field :credits, GraphQL::Types::Int
    field :department, Types::DepartmentType
  end
end