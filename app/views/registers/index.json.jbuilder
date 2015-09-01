json.array!(@registers) do |register|
  json.extract! register, :id, :name, :email
  json.url register_url(register, format: :json)
end
