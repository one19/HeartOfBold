json.array!(@biomes) do |biome|
  json.extract! biome, :id, :map_mat, :description, :name, :functions
  json.url biome_url(biome, format: :json)
end
