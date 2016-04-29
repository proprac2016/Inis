json.array!(@derivacions) do |derivacion|
  json.extract! derivacion, :id, :observaciones
  json.url derivacion_url(derivacion, format: :json)
end
