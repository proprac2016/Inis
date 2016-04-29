json.array!(@entrevista) do |entrevistum|
  json.extract! entrevistum, :id, :asistencia, :tipo
  json.url entrevistum_url(entrevistum, format: :json)
end
