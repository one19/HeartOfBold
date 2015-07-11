json.array!(@projectiles) do |projectile|
  json.extract! projectile, :id, :name, :description, :element, :functions, :sprite, :sprite_start, :sprite_finish
  json.url projectile_url(projectile, format: :json)
end
