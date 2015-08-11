json.array!(@cancells) do |cancell|
  json.extract! cancell, :id, :date, :week, :subject, :teacher
  
end
