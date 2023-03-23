json.extract! @listing, :id, :rooms_number
json.missions @listing.missions do |mission|
  json.extract! mission, :id, :status
end
