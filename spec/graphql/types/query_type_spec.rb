RSpec.describe Types::QueryType do
  set_graphql_type

  let!(:resume) { create(:resume) }
  
  describe 'querying all resumes' do
    it 'has a :resume that returns a Resume type' do
      expect(subject.fields['resume'].type.to_type_signature).to eq('Resume')
    end
  end
end
