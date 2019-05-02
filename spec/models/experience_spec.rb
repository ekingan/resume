RSpec.describe Experience, type: :model do
  it 'has a valid factory' do
    expect(build(:experience)).to be_valid
  end

  let(:resume) { create(:resume) }
  let(:attributes) do
    {
      title: 'Full Stack Developer',
      name: 'Marmoset Music',
      location: 'Portland OR',
      start_date: DateTime.new(1994, 8, 12, 1, 1, 1),
      end_date: DateTime.new(1998, 6, 12, 1, 1, 1),
      description: 'Studied Math',
      resume: resume
    }
  end

  let(:experience) { create(:experience, **attributes) }

  describe 'model validations' do
    it { expect(experience).to allow_value(attributes[:title]).for(:title) }
    it { expect(experience).to allow_value(attributes[:name]).for(:name) }
    it { expect(experience).to allow_value(attributes[:location]).for(:location) }
    it { expect(experience).to allow_value(attributes[:start_date]).for(:start_date) }
    it { expect(experience).to allow_value(attributes[:end_date]).for(:end_date) }
    it { expect(experience).to allow_value(attributes[:description]).for(:description) }

    it { expect(experience).to validate_presence_of(:title) }
    it { expect(experience).to validate_presence_of(:name) }
    it { expect(experience).to validate_presence_of(:location) }
  end

  describe 'model associations' do
    it { expect(experience).to belong_to(:resume) }
  end
end