json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :shard_id
  json.url account_url(account, format: :json)
end
