json.array!(@appointment) do |app|   
  json.extract! app, :id, :description  
  json.start 	 app.date
  json.end 		 app.end_of_appointment
  json.endTime    app.end_of_appointment
  json.id 		 app.id
  json.title	 app.description
  json.url appointment_url(app, format: :html) 
end