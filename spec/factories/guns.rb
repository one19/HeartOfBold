# == Schema Information
#
# Table name: guns
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  size          :integer
#  damage        :float
#  fire_rate     :float
#  clip_size     :integer
#  reload_time   :float
#  proj_size     :float
#  proj_speed    :float
#  proj_distance :integer
#  proj_number   :integer
#  proj_spread   :integer
#  functions     :text
#  sprite        :text
#  sprite_firing :text
#  sprite_reload :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :gun do
    name { Faker::Name.first_name }
    description { Faker::Lorem.paragraph }
    size { Faker::Number.between(1, 16) }
    damage { Faker::Number.between(20, 100) / Faker::Number.between(20, 16) }
    fire_rate { Faker::Number.between(20, 100) / Faker::Number.between(20, 16) }
    clip_size { Faker::Number.between(1, 36) }
    reload_time { Faker::Number.between(20, 100) / Faker::Number.between(20, 16) }
    proj_size { Faker::Number.between(1, 5) / Faker::Number.between(1, 3) }
    proj_speed { Faker::Number.between(20, 100) / Faker::Number.between(20, 16) }
    proj_distance { Faker::Number.between(1, 5) / Faker::Number.between(1, 3) }
    proj_number { Faker::Number.between(1, 6) }
    proj_spread { Faker::Number.between(1, 360) }
    functions { Faker::Lorem.paragraph(19) }
    sprite { Faker::Avatar.image(nil, "32x32") }
    sprite_firing { Faker::Avatar.image(nil, "32x32") }
    sprite_reload { Faker::Avatar.image(nil, "32x32") }
  end

end
