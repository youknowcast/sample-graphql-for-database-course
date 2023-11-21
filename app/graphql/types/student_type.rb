module Types
  class StudentType < Types::BaseObject
    graphql_name 'Student'

    field :ID, ID, null: false
    field :name, GraphQL::Types::String, null: false
    field :department, Types::DepartmentType
    field :tot_cred, GraphQL::Types::Int, null: false
    field :instructor, Types::InstructorType
    field :takes, [Types::TakeType]

    def instructor
      advisor = dataloader.with(Sources::SingleRecord, Advisor, key: :s_ID).load(object.ID)
      dataloader.with(Sources::SingleRecord, Instructor, key: 'ID').load(advisor&.i_ID)
    end
  end
end
