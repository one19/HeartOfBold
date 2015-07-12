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
  factory :biome do
    map_mat { Faker::Lorem.paragraph(19) }
    description { Faker::Lorem.paragraph }
    name { Faker::Name.first_name }
    functions { Faker::Lorem.paragraph(19) }
  end

end
