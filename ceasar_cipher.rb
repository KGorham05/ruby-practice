def prompt_user 
   # instruct the user to input a string
   puts "What message would you like to encode?"
   # save it as a variable
   message = gets.chomp 
   # ask the user for a shift value
   puts "Enter a shift value"
   # save as a var
   value = gets.chomp.to_i
   # pass the string and the shift value into a method
   return [message, value]
end

def encode_message(secret_message, shift_value) 
   # create an array of the alphabet to be used by the cipher
   lowercase_alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
   uppercase_alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
   # split the string into an array of letters
   message_array = secret_message.split("")
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
            puts "This cipher does not encode numbers or symbols, please try again!"
            return
         end
         isUppercase = true
      end
      # add the shift factor to that index position
      encoded_position = array_position + shift_value
      # handle index positions > 25 
      if encoded_position > 25 
         dmod = encoded_position.divmod(26)
         encoded_position = dmod[1]
      end
      # add that letter to a new array
      isUppercase ? encoded_array.push(uppercase_alphabet[encoded_position]) : encoded_array.push(lowercase_alphabet[encoded_position]) 
   end   
   # print the output 
   return encoded_array.join("")
end

def print_message(message)
   puts message
end

user_data = prompt_user()
encoded_message = encode_message(user_data[0], user_data[1])
print_message(encoded_message)
