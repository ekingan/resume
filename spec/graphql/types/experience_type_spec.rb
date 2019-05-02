RSpec.describe ExperienceType do
  set_graphql_type

  it 'has an :id field of ID type' do
    expect(subject.fields['id'].type.to_type_signature).to eq('ID!')

  end

  it 'has a :title field of String type' do
    expect(subject.fields['title'].type.to_type_signature).to eq('String!')
  end

  it 'has a :name field of String type' do
    expect(subject.fields['name'].type.to_type_signature).to eq('String!')

  end

  it 'has a :location field of String type' do
    expect(subject.fields['location'].type.to_type_signature).to eq('String!')
  end

  it 'has a :start_date field of String type' do
    expect(subject.fields['startDate'].type.to_type_signature).to eq('String')
  end

  it 'has an :end_date field of String type' do
    expect(subject.fields['endDate'].type.to_type_signature).to eq('String')
  end

  it 'has a :description field of String type' do
    expect(subject.fields['description'].type.to_type_signature).to eq('String')
  end

  it 'has a :experience_type field of String type' do
    expect(subject.fields['experienceType'].type.to_type_signature).to eq('String!')
  end
end
