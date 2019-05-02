class ExperienceType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :title, String, null: false
  field :name, String, null: false
  field :location, String, null: false
  field :start_date, String, null: true
  field :end_date, String, null: true
  field :description, String, null: true
  field :experience_type, String, null: false
  field :resume, ResumeType, null: false
end
