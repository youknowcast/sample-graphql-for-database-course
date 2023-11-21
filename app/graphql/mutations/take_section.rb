module Mutations
  class TakeSection < BaseMutation
    graphql_name 'TakeSection'

    type Types::TakeType

    # NOTE: BaseMutation の継承している GraphQL::Schema::RelayClassicMutation が input: で wrap してくれる
    argument :student_id, ID, required: true
    argument :course_id, ID, required: true
    argument :sec_id, ID, required: true
    argument :semester, GraphQL::Types::String, required: true
    argument :year, GraphQL::Types::Int, required: true
    argument :grade, GraphQL::Types::String, required: false

    def resolve(student_id:, course_id:, sec_id:, semester:, year:, grade:)
      Take.transaction do
        student = Student.find(student_id)
        section = Section.find([course_id, sec_id, semester, year])

        Take.create!(student:, section:, grade:)
      end
    end
  end
end
