RSpec.describe Resume, type: :model do
  it 'has a valid factory' do
    expect(build(:resume)).to be_valid
  end

  let(:attributes) do
    {
      name: 'Emily Kingan',
      email: 'ekingan@gmail.com',
      phone: '(503) 708-2028',
      summary: 'Looking for a great new opportunity',
      skills: 'Ruby, React, Javascript, PostgreSQL'
    }
  end

  let(:resume) { create(:resume, **attributes) }

  describe 'model validations' do
    it { expect(resume).to allow_value(attributes[:name]).for(:name) }
    it { expect(resume).to validate_presence_of(:name) }
    it { expect(resume).to validate_uniqueness_of(:name)}

    it { expect(resume).to allow_value(attributes[:email]).for(:email) }
    it { expect(resume).to validate_presence_of(:email) }
    it { expect(resume).to validate_uniqueness_of(:email)}

    it { expect(resume).to allow_value(attributes[:phone]).for(:phone) }
    it { expect(resume).to validate_presence_of(:phone) }
    it { expect(resume).to validate_uniqueness_of(:phone).case_insensitive }

    it { expect(resume).to allow_value(attributes[:summary]).for(:summary) }
    it { expect(resume).to validate_presence_of(:summary) }
    
    it { expect(resume).to allow_value(attributes[:skills]).for(:skills) }
    it { expect(resume).to validate_presence_of(:skills) }
  end

  describe 'model associations' do
    # ensure a todo list has many items
    it { expect(resume).to have_many(:experiences) }
  end
end