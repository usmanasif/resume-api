module Mutations
  class DeletePosition < GraphQL::Schema::RelayClassicMutation
    field :position, Types::PositionType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      position = Position.find_by(id: id)
      position.destroy!
      { position: position }
    end
  end
end
