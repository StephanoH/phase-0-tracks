#Methods and Pseudocodes

# Making an Encrypt algorithm
# First set index = 0
# While the value of index is less than the length of the password
# Set the value of password[index] to the next one
# Add a value of one to index and loop.
# Print out the now encrypted password


#Shifts letters in any string to the next letter
def encrypt(password)
    index = 0
    while index < password.length
    #shift the letter at the position to next one, then advances the loop
    password[index] = password[index].next!
    index += 1
    end
    password = password.gsub(/ab/ , "a")
end

# Making a Decrypt algorithm
# Set string = "abcdefghijklmnopqrstuvwxyz"
# rewrite the letter value of each letter in password by:
# asking for the string index number of a particular letter in password
# lowering that index number by 1 
# setting letter of the password to the new password
# loop it so it happens with each letter as in the encrypt algorithm
# print out the decrypted password.

#Shifts letters in any string to one letter before
def decrypt(password)
	count = 0
	#variable set to act as our key
	string = "abcdefghijklmnopqrstuvwxyz"
	while count < password.length
		#set the current letter at the position to the letter before it 
		#using the key
		password[count] = string[string.index(password[count]) - 1]
		count += 1
	end
	puts password
end

#Print question asking for modification type
#Use loop to execute choice of methods based on user input
#Modify methods to ask for password
#Print results to screen and exits.

puts "Would you like to encrypt or decrypt a password? (encrypt/decrypt)"
answer = gets.chomp

if answer == "encrypt"
	puts "Password to be decrypted, please"
	puts encrypt(gets.chomp)
elsif answer == "decrypt"
	puts "Password to be decrypted, please"
	decrypt(gets.chomp)
else
	puts "Incompatible input: self-destruct initiated. Goodbye."
end


#Driver Code

#Shifting letters, including edge cases
#puts encrypt("abc")
#puts encrypt("zed") 

#Shifting letters back, including edge cases
#decrypt("bcd")
#decrypt("afe")

#Nested Method Calling
# the following works because the encrypt method applies its modifications to 
# a string and saves it as a string. This string is then applied as the input
# to the decrypt method, allowing it to carry out its function.
#decrypt(encrypt("swordfish"))