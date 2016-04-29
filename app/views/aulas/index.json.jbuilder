json.array!(@aulas) do |aula|
  json.extract! aula, :id, :nombre
  json.url aula_url(aula, format: :json)
end
