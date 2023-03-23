FactoryBot.define do
  factory :purchase do
    name { 'Shoe' }
    amount { 1.5 }
    user { FactoryBot.build(:user) }
  end
end
