
RSpec.describe ResumeType do
  set_graphql_type

  it 'has an :id field of ID type' do
    expect(subject.fields['id'].type.to_type_signature).to eq('ID!')
  end

  it 'has a :name field of String type' do
    expect(subject.fields['name'].type.to_type_signature).to eq('String!')
  end

  it 'has an :email field of String type' do
    expect(subject.fields['email'].type.to_type_signature).to eq('String!')
  end

  it 'has a :phone field of String type' do
    expect(subject.fields['phone'].type.to_type_signature).to eq('String!')
  end

  it 'has a :summary field of String type' do
    expect(subject.fields['summary'].type.to_type_signature).to eq('String!')
  end

  it 'has a :skills field of String type' do
    expect(subject.fields['skills'].type.to_type_signature).to eq('String!')
  end
end
