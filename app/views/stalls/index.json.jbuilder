json.array!(@stalls) do |stall|
  json.extract! stall, :name, :uuid, :write_hash, :qr_code
  json.url stall_url(stall, format: :json)
end
