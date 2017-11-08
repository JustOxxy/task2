hash_filenames = {}
result = []
Dir.foreach('images') do |filename|
  if hash_filenames[filename]
    hash_filenames[filename] += 1
  else
    hash_filenames[filename] = 1
  end

end

n = 0
hash_filenames.each do |name, count|
  result[n] = "filename: #{name}, count: #{count}"
  n += 1
end

p result

