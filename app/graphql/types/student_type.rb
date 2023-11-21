module Types
  class StudentType < Types::BaseObject
    graphql_name 'Student'

    field :ID, ID, null: false
    field :name, GraphQL::Types::String, null: false
    field :department, Types::DepartmentType
    field :tot_cred, GraphQL::Types::Int, null: false
    field :instructor, Types::InstructorType
    field :takes, [Types::TakeType]
  end
end
