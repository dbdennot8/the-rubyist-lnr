class Cipher
    # def cipher_look_up 
    #     {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
    #      'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
    #      'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
    #      'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
    #      'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
    #      'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
    #      'y' => 'l', 'z' => 'm'
    #     }
    # end

    # def encrypt_message
    #     puts "\nEnter message : \n"
    #     message = gets.chomp.downcase.split('')

    #     encrypted = [] 
    #     # message.collect do |letter|
    #     #     encrypted.push(cipher_look_up[letter], rand(0..999))
    #     message.each do |letter|
    #         encrypted.push(cipher_look_up[letter], rand(0..999))
    #     end
    #     puts "\n#{encrypted.join}\n" 
    #     puts
    # end

    # def decrypt_message
    #     puts "\nEnter encrypted message : \n"
    #     # ciphered = gets.chomp.downcase.scan(/\d+ | [a-z]+ /)
    #     ciphered = gets.chomp.downcase.split(/\d+/)

    #     decrypted = []
    #     ciphered.each do |letter|
    #         decrypted.push(cipher_look_up[letter])
    #     end

    #     puts "\n#{decrypted.join}\n"
    # end
    

    # Smarter way of making the cipher hash

    def cipher_look_up(rotation)
        unciphered = (" ".."z").to_a
        ciphered = (" ".."z").to_a.rotate(rotation)
        # unciphered.each_with_index do |letter, index|
        #     $cipher[letter] = ciphered[index]
        pairing = unciphered.zip(ciphered)
        $cipher = Hash[pairing]
    end

    def encrypt_message
        puts "To encrypt your message, please enter an ROT-value: \n"

        cipher_look_up(gets.chomp.to_i)

        puts "\nEnter a message : \n"
        message = gets.chomp.downcase.split('')

        encrypted = []
        message.collect do |letter|
            encrypted.push($cipher[letter])
        end       
        puts "\n#{encrypted.join}\n"
    end

    def decrypt_message(message)
        puts "\nEnter a message to decrypt : \n"
        message = gets.chomp.downcase.split('')

        decrypted = []
        message.collect do |letter|
            decrypted.push($cipher.key(letter))
        end
        puts "\n#{decrypted.join}\n\n"
    end

    # Using file IO

    def encrypt_file

        puts "\nEnter an ROT-value of your choice: \n"

        cipher_look_up(gets.chomp.to_i)

        puts "What's the name of the file?\n"
        filename = gets.chomp

        reading_file = File.open(filename, "r")
        raw_message = reading_file.read.split('')
        reading_file.close

        encrypted = []

        raw_message.collect do |letter|
            encrypted.push($cipher[letter])
        end

        

        write_encrypted = File.open("secret.txt.encrypted", "w")

        write_encrypted.write(encrypted.join)
        write_encrypted.close

        puts "\n#{filename} has been encrypted and saved.\nPlease see '.encrypted' file in directory\n\n"

    end

    def decrypt_file
        puts "\nWhat is the name of the encrypted file?\n"

        filename = gets.chomp
        reading_file = File.open(filename, "r")
        encrypted_message = reading_file.read.split('')
        reading_file.close

        decrypted = []
        
        encrypted_message.collect do |letter|
            decrypted.push($cipher.key(letter))
        end

        write_decrypted = File.open("secret.txt.decrypted", "w")

        write_decrypted.write(decrypted.join)
        write_decrypted.close

        puts "\n#{filename} has been decrypted and saved.\nPlease see '.decrypted' file in directory\n\n"

    end

end

test = Cipher.new

# test.encrypt_message
# test.decrypt_message

test.encrypt_file
test.decrypt_file