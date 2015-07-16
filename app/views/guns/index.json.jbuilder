json.array!(@guns) do |gun|
  json.extract! gun, :id, :name, :description, :damage, :fire_rate, :clip_size, :reload_time, :proj_size, :proj_speed, :proj_distance, :proj_number, :proj_spread, :functions, :sprite, :sprite_firing, :sprite_reload
  json.url gun_url(gun, format: :json)
end
