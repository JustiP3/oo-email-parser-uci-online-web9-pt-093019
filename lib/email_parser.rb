# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :addresses #an array of string email addresses

initialize(string)
array = []
if string.include?(",")
array = string.split(",").chomp
else
array = string.split(" ").chomp
end
@addresses = array
end # end of initialize

end #end of class EmailAddressParser
