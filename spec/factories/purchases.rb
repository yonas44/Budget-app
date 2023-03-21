FactoryBot.define do
  factory :purchase do
    name { 'MyString' }
    amount { 1.5 }
    user { nil }
  end
end
