json.array!(@events) do |event|
  json.extract! event, :id, :title, :body
  json.start event.start_date
  json.end event.end_date
  json.url event_url(event, format: :html)
<<<<<<< Updated upstream
=======

  if event.genre == "fun"
    json.color "#90ee90"
  else
    json.color ""
  end
  now = Time.now
  time = event.end_date
  judge = "#{time < now}"
  if judge == "true"
    json.color "#ff0000"
  end

>>>>>>> Stashed changes
end