# (->x{i=-1;a=x.chars;a.map{|c|p a.rotate(i+=1)*' '}})['hello']
(->x{i=-1;x.chars{|c|p x.chars.rotate(i+=1)*' '}})['yikes']


a=x.chars

# puts "hello".methods


#

x.map{|c| p c+1000}

## For each element in map, call it c, and then print c.
