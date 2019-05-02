class ResumeType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :name, String, null: false
  field :email, String, null: false
  field :phone, String, null: false
  field :summary, String, null: false
  field :skills, String, null: false
  field :experiences, [ExperienceType], null: true
end
