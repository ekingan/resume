class Mutations::CreateExperience < Mutations::BaseMutation
  null true

  argument :resume_id, ID, required: true
  argument :title, String, required: true
  argument :name, String, required: true
  argument :location, String, required: true
  argument :start_date, String, required: false
  argument :end_date, String, required: false
  argument :experience_type, String, required: true
  argument :description, String, required: false

  field :experience, ExperienceType, null: true
  field :errors, [String], null: false

  def resolve(resume_id:, title:, name:, location:, start_date:, end_date:, experience_type:, description:)
    experience = Experience.new(
      title: title,
      name: name,
      start_date: start_date, 
      end_date: end_date,
      location: location,
      description: description,
      experience_type: experience_type,
      resume_id: resume_id)
    if experience.save
      {
        experience: experience,
        errors: [],
      }
    else
      {
        experience: nil,
        errors: experience.errors.full_messages
      }
    end
  end
end