RSpec.describe Mutations::CreateExperience do
  describe 'creating a new record' do
    let(:migration) { Mutations::CreateExperience.new(object: nil, context: {}) }
    let!(:resume) { create(:resume) }

    it 'adds a new experience' do
      migration.resolve(
        resume_id: resume.id,
        title: 'Full Stack Dev',
        name: 'Coding.io',
        location: 'New York, NY',
        start_date: '1/1/2014',
        end_date: '1/1/2015',
        description: 'it was super!',
        experience_type: :work
      )

      exp = Experience.last
      expect(Experience.count).to eq(1)
      expect(exp.title).to eq('Full Stack Dev')
      expect(exp.name).to eq('Coding.io')
      expect(exp.location).to eq('New York, NY')
      expect(exp.experience_type).to eq('work')
    end
  end
end
