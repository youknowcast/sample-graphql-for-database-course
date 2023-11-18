module Types
  class DepartmentType < Types::BaseObject
    graphql_name 'Department'

    field :dept_name, String, null: false
    field :building, String, null: false
    field :budget, Int, null: false
  end
end
