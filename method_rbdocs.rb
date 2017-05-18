#STRING
  #length - Takes a string, returns the character length as an integer
words = "I came in like a wrecking ball"
puts words.length
  #strip -  Takes a string, returns a copy of that string with all whitespace in front and end removed
          #Whitespace i.e. spaces, 0, \t, \n, \r, \v, \x, \f etc.
words2 = " \t   \n\vI never hit so hard in love\r  \x00 "
puts words2.strip
  #split - Takes a string, divides into substrings and returns an array. Can take 2 arguments (pattern=nil,[limit])
  # =>   - If pattern is a string, contents of that string are used to delimit the passed string to make the returned array
  # =>   - If pattern is a regular expression, string is divided where the pattern matches
  # =>   - If pattern is nil, uses value $ which defaults nil. So passed string is divided as if pattern were (" ")
  # =>   - If limit isn't present, no trailing whitespace. Else, if positive number, total substrings = limit. negative = unlimited substrings and includes trailing whitespace.
words3 = "Allkk Ikk wantedkk waskk tokk breakkk yourkk wallskk"
puts words3.split
puts words3.split("kk")
puts words3.split(//, 4)
  #start_with? - Takes a string, returns true if first letter prefix matches. May take more than one argument.
"Wreckingball".start_with?("worts", "windy")
"Wreckingball".start_with?("smart", "whistle")
#ARRAY
array = ["because", "you", "know", "I'm", "all", "about", "that", "bass"]
  #first - Takes the passed object and returns the first element or first (n) elements. If empty, first returns nil
array.first(3)
  #delete - Takes an object argument and may take and attached code block. Returns the last deleted item, nil if not found or the code block if given
array.delete("all")
  #delete_at - Deletes the item from the passed element by the specified delete_at(INDEX). Returns the element or nil if no item in range of INDEX
array.delete_at(0)
array.delete_at(20)
  #pop - Removes last element and returns it. nil if empty. Can do pop(n)
array.pop(2)
#HASH
hash = {
  :I => 1,
  :love => 2,
  :you => 3
}
  #to_a - Converts hash into nested array of [[key, value][key, value]]
hash.to_a
  #has_key?() - Returns true if ("something") is present
hash.has_key?(:love)
  #has_value? - As above but value
hash.has_value?(500)
#TIME
  #now - creates new Time object at current time. Same as Time.new with no arguments
Time.now
#FILE
  #exist? - Returns true if file name exists
  #extname - Returns the potion of the filename starting after the period. returns empty string if period is last character in filename
File.extname("method_rbdocs.rb")
