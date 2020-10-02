require 'pry'

def my_collect (array)
  i = 0
  results = []
  while i < array.length
    results << yield(array[i])
    i += 1
  end
  results
end

puts my_collect(["Tim Jones", "Tom Smith", "Jim Campagno"]) {|name| name.split(" ").first}