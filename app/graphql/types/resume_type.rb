module Types
  class ResumeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :address, String, null: false
    field :positions, [Types::PositionType], null: false

    def positions
      Resume.first.positions.order(year: :desc)
    end
  end
end
