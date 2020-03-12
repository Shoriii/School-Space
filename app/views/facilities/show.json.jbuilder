json.array!(@events) do |event|
  json.extract! event, :event_id, :title,
  json.start event.start_at
  json.end event.end_at

  json.url event_url(event.facility_id,event_id, format: :html) 
end