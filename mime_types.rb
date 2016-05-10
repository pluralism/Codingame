n = gets.to_i # Number of elements that make the association table
q = gets.to_i # Number of file names to be analyzed
mime_types = Hash.new

n.times do
  ext, mt = gets.split(' ')
  mime_types[ext.downcase] = mt
end

q.times do
  fname = gets.chomp
  fname.prepend('a') # To pass in cases where we only have ".pdf"
  fext = File.extname(fname)[1..-1]
  if fext.nil? or mime_types[fext.downcase].nil?
    puts "UNKNOWN"
  else
    puts mime_types[fext.downcase]
  end
end
