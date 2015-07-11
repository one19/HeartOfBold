json.array!(@characters) do |character|
  json.extract! character, :id, :name, :exp, :hp, :hp_regen, :power, :power_regen, :speed, :size, :move_type, :element, :color_schema, :emblem, :functions, :sprite, :sprite_idle, :sprite_death, :sprite_hat, :sprite_jacket, :sprite_shoes, :sprite_scarf, :user_id, :prime_gun_id, :secondary_gun_id, :prime_ability_id, :secondary_ability_id
  json.url character_url(character, format: :json)
end
