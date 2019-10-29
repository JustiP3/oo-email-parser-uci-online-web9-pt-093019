# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :addresses #an array of string email addresses

def initialize(string)

if string.include?(",") == true
  @addresses = string.split(",")
  else
  @addresses = string.split(" ")
end

@addresses.collect {|address| address.chomp}
end # end of initialize

def parse(string)
  if string.include?(",") == true
    @addresses = string.split(",")
    else
    @addresses = string.split(" ")
  end

  @addresses.collect {|address| address.chomp}
end

end #end of class EmailAddressParser
