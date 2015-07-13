# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  orientation :integer
#  size        :integer
#  functions   :text
#  sprite      :text
#  biome_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :room do
    orientation { Faker::Number.between(1, 4) }
    size 1
    functions { Faker::Lorem.paragraph(19) }
    sprite { Faker::Avatar.image(nil, "800x600") }
    #biome_id 1
  end

end
