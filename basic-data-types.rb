# 4 basic data types
# numbers (integers and floats) strings, symbols, and Booleans (true, false, nil)

# LEARNING OUTCOMES
# List the basic arithmetic operators and what they do.
# Describe the difference between an integer and a float and how to convert between the two.
# Explain string interpolation and concatenation.
# Describe what escape characters are, and list several examples.
# Define what a symbol is and how it differs from a string.
# Explain what the Booleans true, false, and nil represent.

# NUMBERS

# Addition
1 + 1   #=> 2

# Subtraction
2 - 1   #=> 1

# Multiplication
2 * 2   #=> 4

# Division
10 / 5  #=> 2

# Exponent
2 ** 2  #=> 4
3 ** 4  #=> 81

# Modulus (find the remainder of division)
8 % 2   #=> 0  (8 / 2 = 4; no remainder)
10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)

# It’s important to keep in mind that when doing arithmetic with two integers in Ruby, the result will always be an integer.
17 / 5 #=> 3

# To obtain an accurate answer, replace one of the integers with a float
17 / 5.0 #=> 3.4

# To convert an integer to a float:
13.to_f   #=> 13.0

# To convert a float to an integer: (Always rounds down)
13.0.to_i #=> 13
13.9.to_i #=> 13

# Many useful methods ofr numbers built into Ruby
# EVEN
6.even? #=> true
7.even? #=> false
# ODD
6.odd? #=> false
7.odd? #=> true

#STRINGS

# Double and Single Quotation Marks
# Strings can be formed with either double "" or single'' quotation marks, also known as string literals. They are pretty similar, but there are some differences. Specifically, string interpolation and the escape characters that we’ll discuss soon both only work inside double quotation marks, not single quotation marks.

# Concatenation 
# With the plus operator:
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"

#Substrings
"hello"[0]      #=> "h"

"hello"[0..1]   #=> "he"

"hello"[0, 4]   #=> "hell"

"hello"[-1]     #=> "o"

#Escape Characters

\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark'

#Interpolation
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"

#Common String Methods

#capitalize
"hello".capitalize #=> "Hello"

#include?
"hello".include?("lo")  #=> true
"hello".include?("z")   #=> false

#upcase
"hello".upcase  #=> "HELLO"

#downcase
"Hello".downcase  #=> "hello"

#empty?
"hello".empty?  #=> false
"".empty?       #=> true

#length
"hello".length  #=> 5

#reverse
"hello".reverse  #=> "olleh"

#split
"hello world".split  #=> ["hello", "world"]
"hello".split("")    #=> ["h", "e", "l", "l", "o"]

#strip
" hello, world   ".strip  #=> "hello, world" (like .trim() in js)

#examples
"he77o".sub("7", "l")           #=> "hel7o"
"he77o".gsub("7", "l")          #=> "hello"
"hello".insert(-1, " dude")     #=> "hello dude"
"hello".split("")               #=> ["h", "e", "l", "l", "o"]
"!".prepend("hello, ", "world") #=> "hello, world!"

#convertging other objects to strings
5.to_s        #=> "5"
nil.to_s      #=> ""
:symbol.to_s  #=> "symbol"

#SYMBOLS
# Strings can be changed, so every time a string is used, Ruby has to store it in memory even if an existing string with the same value already exists. Symbols, on the other hand, are stored in memory only once, making them faster in certain situations.

# One common application where symbols are preferred over strings are the keys in hashes. We’ll cover this in detail in the hashes lesson later in the course.

# You won’t need to use symbols much in the beginning, but it’s good to get familiar with what they are and what they look like so that you can recognize them.

#Create a symbol
:my_symbol 

#Symbols vs strings

"string" == "string" #true
"string".object_id == "string".object_id #false
:symbol.object_id == :symbol.object_id #true 

#BOOLEANS
#True of False - easy
#Nil - in ruby, nil represents "nothing". Everything in RUby has a return value. When a piece of code doesn't have anything to return, it will return nil. 


