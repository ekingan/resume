FactoryBot.define do
  factory :experience do
    sequence(:name) { Faker::Company.name }
    sequence(:title) { Faker::Job.title } 
    sequence(:location) { Faker::Address.city }
    sequence(:end_date) { Faker::Date.between(10.years.ago, Date.today) }
    resume
  end
end
