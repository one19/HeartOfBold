json.array!(@rooms) do |room|
  json.extract! room, :id, :orientation, :size, :functions, :sprite, :biome_id
  json.url room_url(room, format: :json)
end
