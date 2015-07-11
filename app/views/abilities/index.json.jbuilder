json.array!(@abilities) do |ability|
  json.extract! ability, :id, :name, :description, :power_mod, :context, :functions, :sprite
  json.url ability_url(ability, format: :json)
end
