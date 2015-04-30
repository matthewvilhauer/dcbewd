max, min, average = nil, nil, nil
ufo_sightings = {}

File.open("thomas.ufo_sightings.csv").each_with_index do |line, i|
  next if i == 0
  #Build Hash
  fields = line.split(',')
  ufo_sightings[fields[0]] = fields[1]
end

max = ufo_sightings.values.max
min = ufo_sightings.values.min
average = ufo_sightings.values.inject{ |sum, el| el.to_f + sum.to_f } / ufo_sightings.values.count
 
#output
puts ufo_sightings
puts "Max/Min/Average: #{max}/#{min}/#{average}"
