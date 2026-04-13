require 'csv'

def print_header(filename)
  headers = CSV.read(filename, headers: true).headers
  puts "Header: #{headers}"
end

def print_contents(filename)
  CSV.foreach(filename, headers: true) do |row|
    puts row.fields.inspect
  end
end

print_header("iris.csv")
print_contents("iris.csv")