module Types
  class MutationType < Types::BaseObject
    field :create_experience, mutation: Mutations::CreateExperience
  end
end
