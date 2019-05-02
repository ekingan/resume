FactoryBot.define do
  factory :resume do
    sequence(:name) { Faker::Lorem.name }
    sequence(:email) { Faker::Internet.free_email } 
    sequence(:phone) { Faker::PhoneNumber.cell_phone }
    sequence(:summary) { Faker::Lorem.paragraph(2) }
    sequence(:skills) { Faker::Lorem.paragraph(2) }
  end
end