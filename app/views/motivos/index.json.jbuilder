json.array!(@motivos) do |motivo|
  json.extract! motivo, :id, :tipo
  json.url motivo_url(motivo, format: :json)
end
