# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :string_input, :addresses #an array of string email addresses

def initialize(string)
@string_input = string

#if string.include?(",") == true
#  @addresses = string.split(",")
#  else
#  @addresses = string.split(" ")
#end
#@addresses.collect {|address| address.chomp}
end # end of initialize

def parse
  if string_input.include?(",") == true
    @addresses = string_input.split(",")
    else
    @addresses = string_input.split(" ")
  end

  unique_array = []

  @addresses.each do |address|
    address.delete(" ")
    if unique_array.include?(address) == false
      unique_array << address
    end # end of if block
  end #end of each block
  unique_array
end #end of method

end #end of class EmailAddressParser
