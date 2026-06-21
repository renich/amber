value = Bytes.empty
begin
  signature = value[value.size - 32, 32]
  puts "sig size: #{signature.size}"
rescue e
  puts "error: #{e.class} - #{e.message}"
end
