json.array!(@horarios) do |horario|
  json.extract! horario, :id, :hora_inicio, :hora_fin, :dia
  json.url horario_url(horario, format: :json)
end
