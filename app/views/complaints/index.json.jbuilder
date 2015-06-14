json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :content
  json.url complaint_url(complaint, format: :json)
end
