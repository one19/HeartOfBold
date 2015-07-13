# == Schema Information
#
# Table name: abilities
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  power_mod   :float
#  functions   :text
#  sprite      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :ability do |f|
    f.sequence(:name) { |n| Faker::Name.name + "#{n}" }
    description { Faker::Lorem.paragraph }
    power_mod { Faker::Number.between(100, 20) / Faker::Number.between(10, 20) }
    functions { Faker::Lorem.paragraph(19) }
    sprite { Faker::Avatar.image(nil, "32x32") }
  end

end
