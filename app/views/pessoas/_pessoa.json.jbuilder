json.extract! pessoa, :id, :nome, :idade, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)