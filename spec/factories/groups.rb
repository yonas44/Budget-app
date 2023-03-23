FactoryBot.define do
  factory :group do
    name { 'Shopping' }
    icon { 'Icon_here' }
    user { build(:user) }
  end
end
