module Types
  class SectionType < Types::BaseObject
    graphql_name 'Section'

    field :semester, GraphQL::Types::String, null: false
    field :year, GraphQL::Types::Int, null: false
    field :course, Types::CourseType
    field :classroom, Types::ClassroomType
  end
end