module Types
  class TakeType < Types::BaseObject
    graphql_name 'Take'

    field :grade, GraphQL::Types::Int
    field :section, Types::SectionType
  end
end