json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :teacher
  json.start event.start_date
  json.end event.end_date
  json.url events_url(event, format: :html)
end
