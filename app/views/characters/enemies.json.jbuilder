json.enemy0 do
json.character do
json.extract! @character[0], :id, :name, :exp, :hp, :hp_regen, :power, :power_regen, :speed, :size, :move_type, :element, :color_schema, :emblem, :functions, :sprite, :sprite_idle, :sprite_death, :sprite_hat, :sprite_jacket, :sprite_shoes, :sprite_scarf, :user_id, :prime_gun_id, :secondary_gun_id, :prime_ability_id, :secondary_ability_id, :created_at, :updated_at
end
json.title do
json.extract! @title[0], :id, :name, :description, :created_at, :updated_at
end
json.projectile do
json.extract! @projectiles[0], :id, :name, :description, :element, :functions, :sprite, :sprite_start, :sprite_finish, :created_at, :updated_at
end
json.gun do
json.extract! @gun[0], :id, :name, :description, :damage, :fire_rate, :clip_size, :reload_time, :proj_size, :proj_speed, :proj_distance, :proj_number, :proj_spread, :functions, :sprite, :sprite_firing, :sprite_reload, :created_at, :updated_at
end
json.ability do
json.extract! @ability[0], :id, :name, :description, :power_mod, :functions, :sprite, :created_at, :updated_at
end
end

json.enemy1 do
json.character do
json.extract! @character[1], :id, :name, :exp, :hp, :hp_regen, :power, :power_regen, :speed, :size, :move_type, :element, :color_schema, :emblem, :functions, :sprite, :sprite_idle, :sprite_death, :sprite_hat, :sprite_jacket, :sprite_shoes, :sprite_scarf, :user_id, :prime_gun_id, :secondary_gun_id, :prime_ability_id, :secondary_ability_id, :created_at, :updated_at
end
json.title do
json.extract! @title[1], :id, :name, :description, :created_at, :updated_at
end
json.projectile do
json.extract! @projectiles[1], :id, :name, :description, :element, :functions, :sprite, :sprite_start, :sprite_finish, :created_at, :updated_at
end
json.gun do
json.extract! @gun[1], :id, :name, :description, :damage, :fire_rate, :clip_size, :reload_time, :proj_size, :proj_speed, :proj_distance, :proj_number, :proj_spread, :functions, :sprite, :sprite_firing, :sprite_reload, :created_at, :updated_at
end
json.ability do
json.extract! @ability[1], :id, :name, :description, :power_mod, :functions, :sprite, :created_at, :updated_at
end
end