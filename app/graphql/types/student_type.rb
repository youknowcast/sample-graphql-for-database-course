module Types
  class StudentType < Types::BaseObject
    graphql_name 'Student'

    field :ID, ID, null: false
    field :name, GraphQL::Types::String, null: false
    field :department, Types::DepartmentType
    field :tot_cred, GraphQL::Types::Int, null: false
    field :advisor, Types::InstructorType
    field :takes, [Types::TakeType]

    def advisor
      # causes N+1 problem
      object.instructor
    end
  end
end
