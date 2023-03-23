json.array! @listings do |listing|
  json.extract! listing, :id, :rooms_number
end
