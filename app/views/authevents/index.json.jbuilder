json.array!(@authevents) do |authevent|
  json.extract! authevent, 
  json.url authevent_url(authevent, format: :json)
end
