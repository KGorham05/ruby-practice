def promptUser 
   # instruct the user to input a string
   puts "What message would you like to encode?"
   # save it as a variable
   secret_message = gets.chomp 
   # ask the user for a shift value
   puts "Enter a shift value"
   # save as a var
   shift_value = gets.chomp.to_i
   # pass the string and the shift value into a method
   encode_message(secret_message, shift_value)
end

def encode_message(message, value) 
   # create an array of the alphabet to be used by the cipher
   lowercase_alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
   uppercase_alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
   # split the string into an array of letters
   message_array = message.split("")
   encoded_array = []
   # loop over each letter in the string array
   for letter in message_array
      isUppercase = false
      # find the index position of the existing letter in the array
      array_position = lowercase_alphabet.index(letter)
      # if I don't find it in the lowercase array, look for it in the uppercase array
      if array_position == nil
         array_position = uppercase_alphabet.index(letter)
         # if it's not in either letter array, it's a number or a symbol
         if array_position == nil
            puts "This cipher does not encode numbers or symbols"
            promptUser()
            return
         end
         isUppercase = true
      end
      # add the shift factor to that index position
      encoded_position = array_position + value
      # add logic to check if the new index position will be > 25 
      if encoded_position > 25 
         dmod = encoded_position.divmod(26)
         encoded_position = dmod[1]
      end
      # add that letter to a new array
      isUppercase ? encoded_array.push(uppercase_alphabet[encoded_position]) : encoded_array.push(lowercase_alphabet[encoded_position]) 
   end   
     # print the output 
   puts encoded_array.join("")
end

promptUser()