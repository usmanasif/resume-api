module Types
  class MutationType < Types::BaseObject
    field :deletePosition, mutation: Mutations::DeletePosition
    field :create_position, mutation: Mutations::CreatePosition
  end
end
