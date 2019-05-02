class Types::QueryType < Types::BaseObject
  description "root query"

  field :resumes, [ResumeType], null: true do
    description "gets all resumes"
  end

  field :resume, ResumeType, null: true do
    description "Find a resume by id"
    argument :id, ID, required: true
  end

  field :experiences, [ExperienceType], null: true do
    description "Get all experiences"
  end

  field :experience, ExperienceType, null: true do
    description "Find an experience by id"
    argument :id, ID, required: true
  end

  def experiences
    Experience.all
  end

  def experience(id:)
    Experience.find(id)
  end

  def resume(id:)
    Resume.find(id)
  end

  def resumes
    Resume.all
  end
end
