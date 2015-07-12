# == Schema Information
#
# Table name: characters
#
#  id                   :integer          not null, primary key
#  name                 :string
#  exp                  :float
#  hp                   :float
#  hp_regen             :float
#  power                :float
#  power_regen          :float
#  speed                :float
#  size                 :integer
#  move_type            :string
#  element              :string
#  color_schema         :text
#  emblem               :text
#  functions            :text
#  sprite               :text
#  sprite_idle          :text
#  sprite_death         :text
#  sprite_hat           :text
#  sprite_jacket        :text
#  sprite_shoes         :text
#  sprite_scarf         :text
#  user_id              :integer
#  prime_gun_id         :integer
#  secondary_gun_id     :integer
#  prime_ability_id     :integer
#  secondary_ability_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :character do
    name { Faker::Name.name }
    exp { Faker::Number.between(1, 100000) }
    hp { Faker::Number.between(2, 10) }
    hp_regen { Faker::Number.between(100, 20) / Faker::Number.between(10, 20) }
    power { Faker::Number.between(0, 10) }
    power_regen { Faker::Number.between(100, 20) / Faker::Number.between(10, 20) }
    speed { Faker::Number.between(150, 300) }
    size { Faker::Number.between(1, 5) / Faker::Number.between(1, 3) }
    move_type "float"
    element "none"
    color_schema { Faker::Lorem.sentence }
    emblem { Faker::Avatar.image(nil, "100x100") }
    functions { Faker::Lorem.paragraph(19) }
    sprite { Faker::Avatar.image(nil, "32x32") }
    sprite_idle { Faker::Avatar.image(nil, "32x32") }
    sprite_death { Faker::Avatar.image(nil, "32x32") }
    sprite_hat { Faker::Avatar.image(nil, "32x32") }
    sprite_jacket { Faker::Avatar.image(nil, "32x32") }
    sprite_shoes { Faker::Avatar.image(nil, "32x32") }
    sprite_scarf { Faker::Avatar.image(nil, "32x32") }
    #user_id 1
    #prime_gun_id 1
    #secondary_gun_id 2
    #prime_ability_id 1
    #secondary_ability_id 2
  end

end
