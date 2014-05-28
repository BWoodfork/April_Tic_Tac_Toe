["x", "o", nil, "x"].reduce("") do |result, el|
  result << space.nil? ? " " : space
end


# Same Thing 

result = " "

["x", "o", nil, "o", "x"].each do |space|
  result << space.nil? " " : space
end
result


filter/select
inject/reduce
map/collect