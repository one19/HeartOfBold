# == Schema Information
#
# Table name: projectiles
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  element       :string
#  functions     :text
#  sprite        :text
#  sprite_start  :text
#  sprite_finish :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :projectile do
    name { Faker::Name.first_name }
    description { Faker::Lorem.paragraph }
    element "none"
    functions { Faker::Lorem.paragraph(19) }
    sprite { Faker::Avatar.image(nil, "32x32") }
    sprite_start { Faker::Avatar.image(nil, "32x32") }
    sprite_finish { Faker::Avatar.image(nil, "32x32") }
  end

end
