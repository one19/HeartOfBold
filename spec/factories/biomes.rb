# == Schema Information
#
# Table name: biomes
#
#  id          :integer          not null, primary key
#  map_mat     :text
#  description :text
#  name        :string
#  functions   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :biome do |f|
    map_mat { Faker::Lorem.paragraph(19) }
    description { Faker::Lorem.paragraph }
    f.sequence(:name) { |n| Faker::Name.first_name + "#{n}" }
    functions { Faker::Lorem.paragraph(19) }
  end

end
