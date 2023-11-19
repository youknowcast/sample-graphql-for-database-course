module Types
  class ClassroomType < Types::BaseObject
    graphql_name 'Classroom'

    field :building, GraphQL::Types::String, null: false
    field :room_number, GraphQL::Types::Int, null: false
    field :capacity, GraphQL::Types::Int
  end
end