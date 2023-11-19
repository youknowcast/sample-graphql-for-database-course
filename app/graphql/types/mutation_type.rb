# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :take_section, mutation: Mutations::TakeSection
  end
end
