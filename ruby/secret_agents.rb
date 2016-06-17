#write a method that writes a stirng that advances ever letter forward, all lowercase

def encrypt(string) #shoud take a string
 i = 0

 while i<string.length #shold loop throught the string
    if string[i]=="z"
       string[i]="a"
     else
       string[i] = string[i].next#should return the next letter in the alphabet
   end
   i +=1
 end
 p string
end



#Write another method to reverse this method

#find out how to get the index of every letter in the alphabet
def decrypt(string)
 i=0
 alphabet = "abcdefghijklmnopqrstuvwxyz"#alphabet variable
 while i<string.length
     #we need to tell the alphabet string what index the letter of the string letter is in the alphabet
# num = hello[0]==>"h" alphabet.index("h")==>7
   #num-1==> 6
   #alphabet[6]
string[i]= alphabet[alphabet.index(string[i])-1]
 #p string[alphabet.index(alphabet[i-1])]

i+=1
 end
 p string
end

=begin
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("swordfish"))
=end

puts "Would you like to encrypt or decrypt your password?"
user_response=gets.chomp
puts "What is the password?"
password = gets.chomp

if user_response == "encrypt"
 encrypt(password)
elsif user_response == "decrypt"
 decrypt(password)
else
 puts "sorry, that answer does not compute"
end