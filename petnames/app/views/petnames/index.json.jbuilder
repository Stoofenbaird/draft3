json.array!(@petnames) do |petname|
  json.extract! petname, :id, :name
  json.url petname_url(petname, format: :json)
end
